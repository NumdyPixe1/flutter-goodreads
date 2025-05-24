import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'label_display_language_name': 'Language',
          'appbar_title_shelves': 'All shelves & tags',
          'appbar_title_notify': 'Notifications Center',
          'messages_text': 'You have no messages.',
          'friend_requests': 'You currently have no friend requests',
          'expolre_by_genre': 'expolre by genre',
          'see_new_releases':
              'See new releases, most-read books, quotes, lists and more in these popular genres.',
          'search_hint_text': 'Title,author or ISBN',
          'read': 'Read',
          'currently_reading': 'Currently Reading',
          'want_to_read': 'Want to Read',
          'like': 'Like',
          'comment': 'Comment',
          'settings_title': 'Settings & Support',
        },
        'ja_JP': {
          'label_display_language_name': 'Language',
          'appbar_title_shelves': 'すべての本棚とタグ',
          'appbar_title_notify': '通知センター',
          'messages_text': 'You have no messages.',
          'friend_requests': 'You currently have no friend requests',
          'expolre_by_genre': 'expolre by genre',
          'see_new_releases':
              'See new releases, most-read books, quotes, lists, and more in these popular genres.',
          'search_hint_text': 'タイトル、著者、ISBN',
          'read': '読んだ本',
          'currently_reading': '今読んでいる本',
          'want_to_read': '読みたい本',
          'like': 'いいね!',
          'comment': ' コメント',
        }
      };
}
