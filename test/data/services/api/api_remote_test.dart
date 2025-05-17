import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pretalx_schedule/data/services/api/api_remote.dart';
import 'package:pretalx_schedule/data/services/api/models/conference/conference.dart';
import 'package:pretalx_schedule/data/services/api/models/event/event.dart';
import 'package:pretalx_schedule/utils/result.dart';

// Generate mock class
@GenerateMocks([http.Client])
import 'api_remote_test.mocks.dart';

void main() {
  group('RemoteApi', () {
    late MockClient mockClient;

    setUp(() {
      mockClient = MockClient();
    });

    test('getEvents fetches and parses events correctly', () async {
      // Arrange
      const testUrl = 'https://cfp.eh22.easterhegg.eu';
      final mockResponse = '''
      [{"name":{"de":"Easterhegg 2025","en":"Easterhegg 2025"},"slug":"eh22","is_public":true,"date_from":"2025-04-18","date_to":"2025-04-21","timezone":"Europe/Berlin","urls":{"base":"https://cfp.eh22.easterhegg.eu/eh22/","schedule":"https://cfp.eh22.easterhegg.eu/eh22/schedule/","login":"https://cfp.eh22.easterhegg.eu/eh22/login/","feed":"https://cfp.eh22.easterhegg.eu/eh22/schedule/feed.xml"}}]
      ''';

      // Setup the mock to return a successful response with the test data
      when(mockClient.get(Uri.parse('$testUrl/api/events')))
          .thenAnswer((_) async => http.Response(mockResponse, 200));

      final remoteApi = RemoteApi(client: mockClient);

      // Act
      final result = await remoteApi.getEvents(testUrl);

      // Assert
      verify(mockClient.get(Uri.parse('$testUrl/api/events'))).called(1);

      expect(result, isA<Ok<List<Event>>>());

      if (result is Ok<List<Event>>) {
        final events = result.value;
        expect(events.length, equals(1));

        final event = events.first;
        expect(event.name.de, equals('Easterhegg 2025'));
        expect(event.slug, equals('eh22'));
        expect(event.urls.base, equals('https://cfp.eh22.easterhegg.eu/eh22/'));
      }
    });

    test('getEvents handles error responses', () async {
      // Arrange
      const testUrl = 'https://cfp.eh22.easterhegg.eu';

      // Setup the mock to return an error response
      when(mockClient.get(Uri.parse('$testUrl/api/events')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      final remoteApi = RemoteApi(client: mockClient);

      // Act
      final result = await remoteApi.getEvents(testUrl);

      // Assert
      verify(mockClient.get(Uri.parse('$testUrl/api/events'))).called(1);

      expect(result, isA<Error<List<Event>>>());

      if (result is Error<List<Event>>) {
        expect(result.error, isA<HttpException>());
        expect(result.error.toString(), contains('Invalid response'));
      }
    });

    test('getEvents handles exceptions', () async {
      // Arrange
      const testUrl = 'https://cfp.eh22.easterhegg.eu';

      // Setup the mock to throw an exception
      when(mockClient.get(Uri.parse('$testUrl/api/events')))
          .thenThrow(const SocketException('Failed to connect'));

      final remoteApi = RemoteApi(client: mockClient);

      // Act
      final result = await remoteApi.getEvents(testUrl);

      // Assert
      verify(mockClient.get(Uri.parse('$testUrl/api/events'))).called(1);

      expect(result, isA<Error<List<Event>>>());

      if (result is Error<List<Event>>) {
        expect(result.error, isA<SocketException>());
        expect(result.error.toString(), contains('Failed to connect'));
      }
    });

    group('getConference', () {
      // Create a test event object to use in the tests
      late Event testEvent;

      setUp(() {
        testEvent = const Event(
          name: LocalizedName(de: 'Easterhegg 2025', en: 'Easterhegg 2025'),
          slug: 'eh22',
          isPublic: true,
          dateFrom: '2025-04-18',
          dateTo: '2025-04-21',
          timezone: 'Europe/Berlin',
          urls: EventUrls(
            base: 'https://cfp.eh22.easterhegg.eu/eh22/',
            schedule: 'https://cfp.eh22.easterhegg.eu/eh22/schedule/',
            login: 'https://cfp.eh22.easterhegg.eu/eh22/login/',
            feed: 'https://cfp.eh22.easterhegg.eu/eh22/schedule/feed.xml',
          ),
        );
      });

      test('getConference fetches and parses conference data correctly',
          () async {
        // Arrange
        final mockConferenceResponse = '''
        {"generator":{"name":"pretalx","version":"2024.3.1"},"schedule":{"url":"https://cfp.eh22.easterhegg.eu/eh22/schedule/","version":"0.14","base_url":"https://cfp.eh22.easterhegg.eu","conference":{"acronym":"eh22","title":"Easterhegg 2025","start":"2025-04-18","end":"2025-04-21","daysCount":4,"timeslot_duration":"00:05","time_zone_name":"Europe/Berlin","colors":{"primary":"#fd44b6"},"rooms":[{"name":"K2 Talk","guid":"7436ee4a-4f22-5299-bd96-35ee5e0e865a","description":"Presentation Room","capacity":300},{"name":"Links vorbei Workshop","guid":"72668bf8-42ca-5309-a584-9938e13ec808","description":"The foyer behind K6","capacity":30}],"tracks":[{"name":"Talk","color":"#ED0909"},{"name":"Workshop","color":"#050FFF"},{"name":"Art Installation","color":"#322F26"},{"name":"Performance / Music","color":"#00ccff"},{"name":"Workshop Making","color":"#9faf00"}],"days":[{"index":1,"date":"2025-04-18","day_start":"2025-04-18T04:00:00+02:00","day_end":"2025-04-19T03:59:00+02:00","rooms":{"K2 Talk":[{"url":"https://cfp.eh22.easterhegg.eu/eh22/talk/TTWC9F/","id":125,"guid":"3e1adf67-241f-59a0-90de-f118dafa7b63","date":"2025-04-18T15:00:00+02:00","start":"15:00","logo":null,"duration":"00:15","room":"K2 Talk","slug":"eh22-125-opening","title":"Opening","subtitle":"","track":"Talk","type":"Content","language":"de","abstract":"Hier gehts los","description":"","recording_license":"","do_not_record":false,"persons":[],"links":[],"attachments":[],"answers":[]},{"url":"https://cfp.eh22.easterhegg.eu/eh22/talk/CNPNBG/","id":80,"guid":"dee7e1d6-0383-57d5-a7aa-7a3a95b1be21","date":"2025-04-18T15:15:00+02:00","start":"15:15","logo":null,"duration":"00:40","room":"K2 Talk","slug":"eh22-80-fr-n-appel-und-n-ei-die-vereinnahmung-des-ffentlichen-raumes-durch-digitale-werbung","title":"Für 'n Appel und 'n Ei: die Vereinnahmung des öffentlichen Raumes durch digitale Werbung","subtitle":"","track":"Talk","type":"Content","language":"de","abstract":"...","recording_license":"","do_not_record":false,"persons":[{"guid":"77ae4633-c409-5f8c-aae0-44bdc1a86f82","id":89,"code":"FHUATM","public_name":"skye","avatar":null,"biography":"CCCHH-Mitglied und Freies-Radio-Zecke","answers":[]},{"guid":"09e832f7-482b-513a-86c4-354a65d3eae7","id":90,"code":"QVRSND","public_name":"Erik","avatar":null,"biography":"Mit-Initiator von Hamburg Werbefrei.\\r\\nTreibt sich gern auf EasterHeggs rum.","answers":[]}],"links":[],"attachments":[],"answers":[]}],"Links vorbei Workshop":[{"url":"https://cfp.eh22.easterhegg.eu/eh22/talk/7G7KLJ/","id":2,"guid":"b1dfb97f-7305-5704-95aa-1121848c1c6e","date":"2025-04-18T15:30:00+02:00","start":"15:30","logo":"https://cfp.eh22.easterhegg.eu/media/eh22/submissions/7G7KLJ/IMG_20250116_120724__O7yaCLF.jpg","duration":"01:30","room":"Links vorbei Workshop","slug":"eh22-2-die-kunst-der-schlechten-dichtung","title":"Die Kunst der schlechten Dichtung","subtitle":"","track":"Workshop","type":"Content","language":"de","abstract":"...","recording_license":"","do_not_record":false,"persons":[{"guid":"46b737d9-f26e-5a0d-93dd-d121af307856","id":10,"code":"R8GDAF","public_name":"Fynn Godau","avatar":null,"biography":"* [Fahrkarten](http://9gewinnt.de)\\r\\n* [Theoretische Informatik](https://www1.pub.informatik.uni-wuerzburg.de/pub/theses/2024-godau-bachelorarbeit.pdf)\\r\\n* [Android](https://f-droid.org/packages/godau.fynn.moodledirect/)\\r\\n\\r\\nAber diesmal rede ich über keins davon.","answers":[]}],"links":[],"attachments":[],"answers":[]}]}},{"index":2,"date":"2025-04-19","day_start":"2025-04-19T04:00:00+02:00","day_end":"2025-04-20T03:59:00+02:00","rooms":{"K2 Talk":[{"url":"https://cfp.eh22.easterhegg.eu/eh22/talk/HZMYLQ/","id":75,"guid":"d63c05b8-bbcd-5a9a-8488-cb14b538ec72","date":"2025-04-19T14:00:00+02:00","start":"14:00","logo":"https://cfp.eh22.easterhegg.eu/media/eh22/submissions/HZMYLQ/image_2024-05-03_02-05-20_JyGi4c3.jpg","duration":"01:00","room":"K2 Talk","slug":"eh22-75-beyond-cryptopartys-wie-aktivistis-und-nerds-voneinander-lernen-knnen","title":"Beyond Cryptopartys - wie Aktivistis, [*] und Nerds voneinander lernen können","subtitle":"","track":"Talk","type":"Content","language":"de","abstract":"...","recording_license":"","do_not_record":false,"persons":[{"guid":"150b359c-d439-5565-bb66-062277c8b392","id":82,"code":"UHBEC3","public_name":"missytake","avatar":null,"biography":"missytake has ten years of experience in both activism and giving workshops about digital safety measures. All their writing, music, and code is Creative Commons.","answers":[]}],"links":[],"attachments":[],"answers":[]}],"Links vorbei Workshop":[{"url":"https://cfp.eh22.easterhegg.eu/eh22/talk/WBNEXD/","id":95,"guid":"434ab816-1efe-5729-a87b-9eb5e39ef798","date":"2025-04-19T12:30:00+02:00","start":"12:30","logo":null,"duration":"01:30","room":"Links vorbei Workshop","slug":"eh22-95-miku-in-einer-audio-cd-verstecken","title":"Miku in einer Audio CD verstecken","subtitle":"","track":"Workshop","type":"Content","language":"de","abstract":"...","recording_license":"","do_not_record":false,"persons":[{"guid":"978677e8-9a76-59e0-a256-03e1d257637d","id":105,"code":"U9J9FN","public_name":"nachtpfoetchen","avatar":null,"biography":null,"answers":[]}],"links":[],"attachments":[],"answers":[]}]}}]}}}
        ''';

        // Setup the mock to return a successful response with the conference data
        final expectedUri =
            Uri.parse('${testEvent.urls.base}/schedule/export/schedule.json');
        when(mockClient.get(expectedUri)).thenAnswer(
            (_) async => http.Response(mockConferenceResponse, 200));

        final remoteApi = RemoteApi(client: mockClient);

        // Act
        final result = await remoteApi.getConference(testEvent);

        // Assert
        verify(mockClient.get(expectedUri)).called(1);

        expect(result, isA<Ok<Conference>>());

        if (result is Ok<Conference>) {
          final conference = result.value;

          // Verify conference details
          expect(conference.acronym, equals('eh22'));
          expect(conference.title, equals('Easterhegg 2025'));
          expect(conference.start, equals('2025-04-18'));
          expect(conference.end, equals('2025-04-21'));
          expect(conference.daysCount, equals(4));
          expect(conference.timeZoneName, equals('Europe/Berlin'));

          // Verify rooms
          expect(conference.rooms!.length, equals(2));
          expect(conference.rooms![0].name, equals('K2 Talk'));
          expect(conference.rooms![0].description, equals('Presentation Room'));
          expect(conference.rooms![0].capacity, equals(300));

          // Verify tracks
          expect(conference.tracks!.length, equals(5));
          expect(conference.tracks![0].name, equals('Talk'));
          expect(conference.tracks![0].color, equals('#ED0909'));

          // Verify days
          expect(conference.days.length, equals(2));

          // Verify day 1
          final day1 = conference.days[0];
          expect(day1.index, equals(1));
          expect(day1.date, equals('2025-04-18'));
          expect(day1.rooms.length, equals(2)); // Two rooms with events

          // Verify talks in day 1
          final day1K2Talks = day1.rooms['K2 Talk'];
          expect(day1K2Talks?.length, equals(2));
          expect(day1K2Talks?[0].title, equals('Opening'));
          expect(day1K2Talks?[0].duration, equals('00:15'));
          expect(day1K2Talks?[1].title, contains('Appel und'));
          expect(day1K2Talks?[1].persons.length, equals(2));

          // Verify workshops in day 1
          final day1Workshops = day1.rooms['Links vorbei Workshop'];
          expect(day1Workshops?.length, equals(1));
          expect(day1Workshops?[0].title,
              contains('Kunst der schlechten Dichtung'));
          expect(day1Workshops?[0].duration, equals('01:30'));

          // Verify day 2
          final day2 = conference.days[1];
          expect(day2.index, equals(2));
          expect(day2.date, equals('2025-04-19'));

          // Verify talks in day 2
          final day2K2Talks = day2.rooms['K2 Talk'];
          expect(day2K2Talks?.length, equals(1));
          expect(day2K2Talks?[0].title, contains('Beyond Cryptopartys'));

          // Verify workshops in day 2
          final day2Workshops = day2.rooms['Links vorbei Workshop'];
          expect(day2Workshops?.length, equals(1));
          expect(day2Workshops?[0].title, contains('Miku'));
        }
      });

      test('getConference handles error responses', () async {
        // Arrange
        final expectedUri =
            Uri.parse('${testEvent.urls.base}/schedule/export/schedule.json');

        // Setup the mock to return an error response
        when(mockClient.get(expectedUri))
            .thenAnswer((_) async => http.Response('Not Found', 404));

        final remoteApi = RemoteApi(client: mockClient);

        // Act
        final result = await remoteApi.getConference(testEvent);

        // Assert
        verify(mockClient.get(expectedUri)).called(1);

        expect(result, isA<Error<Conference>>());

        if (result is Error<Conference>) {
          expect(result.error, isA<HttpException>());
          expect(result.error.toString(), contains('Invalid response'));
        }
      });

      test('getConference handles exceptions', () async {
        // Arrange
        final expectedUri =
            Uri.parse('${testEvent.urls.base}/schedule/export/schedule.json');

        // Setup the mock to throw an exception
        when(mockClient.get(expectedUri))
            .thenThrow(const SocketException('Failed to connect'));

        final remoteApi = RemoteApi(client: mockClient);

        // Act
        final result = await remoteApi.getConference(testEvent);

        // Assert
        verify(mockClient.get(expectedUri)).called(1);

        expect(result, isA<Error<Conference>>());

        if (result is Error<Conference>) {
          expect(result.error, isA<SocketException>());
          expect(result.error.toString(), contains('Failed to connect'));
        }
      });
    });
  });
}
