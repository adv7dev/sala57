import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['pt', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String ptText = '',
    String enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'diy011rk': {
      'pt': 'Entrar',
      'en': '',
    },
    'xu5kp49v': {
      'pt': 'Seu E-mail',
      'en': '',
    },
    'qau4e318': {
      'pt': 'Sua Senha',
      'en': '',
    },
    'v7gfc6om': {
      'pt': 'Entrar',
      'en': '',
    },
    '9zy14ynu': {
      'pt': 'Esqueceu sua Senha?',
      'en': '',
    },
    'o75exzdc': {
      'pt': 'Ou use uma rede social ',
      'en': '',
    },
    'kodvw0zk': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'owerg0ei': {
      'pt': 'Seu E-mail',
      'en': '',
    },
    'ajf0chib': {
      'pt': 'Sua Senha',
      'en': '',
    },
    'jjdla04b': {
      'pt': 'Confirmar Senha',
      'en': '',
    },
    'h1x8h5l8': {
      'pt': 'Criar Conta',
      'en': '',
    },
    'w7145msc': {
      'pt': 'Ou use uma rede social para criar uma conta',
      'en': '',
    },
  },
  // social
  {
    'g0xyyrjn': {
      'pt': '@username',
      'en': '',
    },
    '4mnl75zc': {
      'pt': '2,493',
      'en': '',
    },
    'n34ac4re': {
      'pt': '4',
      'en': '',
    },
    'rss834zr': {
      'pt':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en': '',
    },
    'ycp68zco': {
      'pt': 'Social',
      'en': '',
    },
  },
  // createYourProfile
  {
    '57fuznxt': {
      'pt': 'Complete seu Perfil',
      'en': '',
    },
    '7nqbvosk': {
      'pt': '2/2',
      'en': '',
    },
    'yne7aif7': {
      'pt': 'Preencha seu perfil agora para concluir as configurações.',
      'en': '',
    },
    'rya0aotv': {
      'pt': 'Nome e Sobrenome',
      'en': '',
    },
    'f9q5z0nl': {
      'pt': 'Nome de Usuário',
      'en': '',
    },
    't0bbrook': {
      'pt': '@',
      'en': '',
    },
    '358tkmj3': {
      'pt': 'Conte-nos sobre você!',
      'en': '',
    },
    'p6uipik9': {
      'pt': 'Complete Setup',
      'en': '',
    },
    'f90j47v7': {
      'pt': 'Home',
      'en': '',
    },
  },
  // homePage
  {
    'qiw7q4wt': {
      'pt': 'SALA 57',
      'en': 'ROOM 57',
    },
    '9pexqdzk': {
      'pt': 'MEDITAÇÃO | ',
      'en': 'MEDITATION |',
    },
    'mtarxfqn': {
      'pt': 'Home',
      'en': 'home',
    },
  },
  // forgotPassword
  {
    'pfk2gxxq': {
      'pt': 'Forgot Password',
      'en': '',
    },
    'zkf4l67j': {
      'pt': 'Enter your email',
      'en': '',
    },
    '51ah7rdc': {
      'pt':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    'e19iwtqz': {
      'pt': 'Send Reset Link',
      'en': '',
    },
    'mnjh01wg': {
      'pt': 'Home',
      'en': '',
    },
  },
  // profilePage
  {
    '8jzc6qfv': {
      'pt': 'Add a Dog',
      'en': '',
    },
    '5jqt5w76': {
      'pt': 'Settings',
      'en': '',
    },
    'tgrv6mif': {
      'pt': 'Dog Profiles',
      'en': '',
    },
    'vbaahdnb': {
      'pt': 'Posts',
      'en': '',
    },
    'rvzh60az': {
      'pt': '@username',
      'en': '',
    },
    'relnz42w': {
      'pt': '2,493',
      'en': '',
    },
    'ke1zn69e': {
      'pt': '4',
      'en': '',
    },
    'bn27no21': {
      'pt':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en': '',
    },
    'dywwzovd': {
      'pt': 'Profile',
      'en': '',
    },
  },
  // createPost
  {
    'o9v9sg2i': {
      'pt': 'Create Post',
      'en': '',
    },
    'mnrwdjj9': {
      'pt': 'Comment....',
      'en': '',
    },
    '0zk1y423': {
      'pt': 'Location',
      'en': '',
    },
    'zrp1kvg1': {
      'pt': 'Create Post',
      'en': '',
    },
    '8pjo7crm': {
      'pt': 'Home',
      'en': '',
    },
  },
  // createStory
  {
    '30jf62rb': {
      'pt': 'Comment....',
      'en': '',
    },
    'jlnqdbpu': {
      'pt': 'Photo',
      'en': '',
    },
    'cm7gp4uo': {
      'pt': 'Video',
      'en': '',
    },
    'cwif719l': {
      'pt': 'Create Story',
      'en': '',
    },
    'mfvft3fy': {
      'pt': 'Home',
      'en': '',
    },
  },
  // postDetails
  {
    '3f87t3fr': {
      'pt': 'Comments',
      'en': '',
    },
    'by6tbhrb': {
      'pt': 'Posted',
      'en': '',
    },
    'luqdjm70': {
      'pt': 'Comment here...',
      'en': '',
    },
    'osy1bzhp': {
      'pt': 'Post',
      'en': '',
    },
    'pyl32c16': {
      'pt': 'Home',
      'en': '',
    },
  },
  // storyDetails
  {
    '3v8vr12u': {
      'pt': 'Home',
      'en': '',
    },
  },
  // editSettings
  {
    's4rc4p54': {
      'pt': 'Account Settings',
      'en': '',
    },
    'u0ab2zsq': {
      'pt': 'Edit Profile',
      'en': '',
    },
    'mdlzf3fn': {
      'pt': 'Change Password',
      'en': '',
    },
    'elifqk0u': {
      'pt': 'Log Out',
      'en': '',
    },
    'j1gaxnm5': {
      'pt': 'Settings',
      'en': '',
    },
    '9xmla108': {
      'pt': 'Profile',
      'en': '',
    },
  },
  // editUserProfile
  {
    'respmxkq': {
      'pt': 'Your Profile',
      'en': '',
    },
    'h33ozyyv': {
      'pt':
          'Fill out your profile now in order to complete setup of your profile.',
      'en': '',
    },
    'g9tuuqw7': {
      'pt': 'Your Name',
      'en': '',
    },
    'el4i7z4u': {
      'pt': 'UserName',
      'en': '',
    },
    'wtevvp0a': {
      'pt': 'Your Bio',
      'en': '',
    },
    'v8g2ebgo': {
      'pt': 'Save Changes',
      'en': '',
    },
    'qvf0hf1e': {
      'pt': 'Home',
      'en': '',
    },
  },
  // changePassword
  {
    'fk49gx15': {
      'pt': 'Change Password',
      'en': '',
    },
    'jv4xylai': {
      'pt': 'Enter your email',
      'en': '',
    },
    'iy30awec': {
      'pt':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    '92yfxidv': {
      'pt': 'Send Reset Link',
      'en': '',
    },
    'lfuxxtiq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // viewProfilePageOther
  {
    'vkeuv7ij': {
      'pt': 'Message',
      'en': '',
    },
    'nr8uwwgl': {
      'pt': 'Dog Profiles',
      'en': '',
    },
    'nu16yc6o': {
      'pt': 'Posts',
      'en': '',
    },
    'yoz1wjk1': {
      'pt': '@username',
      'en': '',
    },
    '6prj4no2': {
      'pt': '2,493',
      'en': '',
    },
    'op3p44b2': {
      'pt': '4',
      'en': '',
    },
    '8lhhfdgs': {
      'pt':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en': '',
    },
    'c0fy3asd': {
      'pt': 'Profile',
      'en': '',
    },
  },
  // chatPage
  {
    'o6ycg65w': {
      'pt': 'Group Chat',
      'en': '',
    },
    '5nl10flt': {
      'pt': 'Home',
      'en': '',
    },
  },
  // allChatsPage
  {
    '80ko590x': {
      'pt': 'Messages',
      'en': '',
    },
    '3qig93fq': {
      'pt': 'Messages',
      'en': '',
    },
  },
  // addChatUsers
  {
    'durb8bgz': {
      'pt': 'Add Friends to chat',
      'en': '',
    },
    '09q918fy': {
      'pt': 'Select the friends to add to chat.',
      'en': '',
    },
    'zdesyxlo': {
      'pt': 'Search for friends...',
      'en': '',
    },
    'gbp444q7': {
      'pt': 'Invite to Chat',
      'en': '',
    },
    '6kdxrpy6': {
      'pt': 'Home',
      'en': '',
    },
  },
  // createGroupChat
  {
    'r4s04ya3': {
      'pt': 'Create Group Chat',
      'en': '',
    },
    'fxsjbgwh': {
      'pt': 'Select the friends to add to chat.',
      'en': '',
    },
    'v60ngah2': {
      'pt': 'Search for friends...',
      'en': '',
    },
    'gwdpno24': {
      'pt': 'Create Chat',
      'en': '',
    },
    '80q2vqug': {
      'pt': 'Home',
      'en': '',
    },
  },
  // comments
  {
    '9oufay6f': {
      'pt': 'Comments',
      'en': '',
    },
    'vtdt28il': {
      'pt': 'Posted',
      'en': '',
    },
    'mu8xh6ye': {
      'pt': 'Comment here...',
      'en': '',
    },
    '94rh264c': {
      'pt': 'Post',
      'en': '',
    },
  },
  // createModal
  {
    'z0mcgivs': {
      'pt': 'Create Story',
      'en': '',
    },
    'qqb2bxsm': {
      'pt': 'Share a video of your pup.',
      'en': '',
    },
    'pmphyy23': {
      'pt': 'Create Post',
      'en': '',
    },
    'gukmr1o5': {
      'pt': 'Share a photo that will appear in the timeline.',
      'en': '',
    },
    'o2qfpany': {
      'pt': 'Create Post',
      'en': '',
    },
    'k8s4bryi': {
      'pt': 'Share photos on your timeline.',
      'en': '',
    },
  },
  // deletePost
  {
    '4kpmr2x6': {
      'pt': 'Delete Post',
      'en': '',
    },
    'nvj12bf4': {
      'pt': 'Cancel',
      'en': '',
    },
  },
  // deleteStory
  {
    'vkvau1m5': {
      'pt': 'Delete Story',
      'en': '',
    },
    'b9vd15u9': {
      'pt': 'Cancel',
      'en': '',
    },
  },
  // add_meditacao
  {
    'ofo389ew': {
      'pt': 'Titulo',
      'en': '',
    },
    'sv1q6nr5': {
      'pt': 'Texto',
      'en': '',
    },
    'c5xwy099': {
      'pt': 'url',
      'en': '',
    },
    '4eosze22': {
      'pt': 'ADD',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '62mrjvfe': {
      'pt': '',
      'en': '',
    },
    '8vp9tdh2': {
      'pt': '',
      'en': '',
    },
    '6sgzbk0w': {
      'pt': '',
      'en': '',
    },
    '5cqdre5w': {
      'pt': '',
      'en': '',
    },
    'o7hsylzy': {
      'pt': '',
      'en': '',
    },
    'vlrygt16': {
      'pt': '',
      'en': '',
    },
    'mhoqevp2': {
      'pt': '',
      'en': '',
    },
    'osz5v5le': {
      'pt': '',
      'en': '',
    },
    '5a85nitd': {
      'pt': '',
      'en': '',
    },
    'rf51vopr': {
      'pt': '',
      'en': '',
    },
    'pxzge82h': {
      'pt': '',
      'en': '',
    },
    'fe2w1xdy': {
      'pt': '',
      'en': '',
    },
    'wvdeo8ft': {
      'pt': '',
      'en': '',
    },
    'rk7ynnrp': {
      'pt': '',
      'en': '',
    },
    '0av1ys2u': {
      'pt': '',
      'en': '',
    },
    'pg1zcs67': {
      'pt': '',
      'en': '',
    },
    'eqzriha2': {
      'pt': '',
      'en': '',
    },
    'dbpdwce2': {
      'pt': '',
      'en': '',
    },
    '57ww6ook': {
      'pt': '',
      'en': '',
    },
    'uor4zpsk': {
      'pt': '',
      'en': '',
    },
    'fkmic9ss': {
      'pt': '',
      'en': '',
    },
    'wa0kqodz': {
      'pt': '',
      'en': '',
    },
    'xkv43bb3': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
