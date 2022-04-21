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
    '5pf8chlk': {
      'pt': 'EXPERIÊNCIAS',
      'en': '',
    },
    'fubc1g3d': {
      'pt': 'Publique a sua aqui...',
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
    'wz0rht22': {
      'pt': 'SALA 57',
      'en': 'ROOM 57',
    },
    'i4ftmtmn': {
      'pt': 'Das 5h às 7h...',
      'en': '',
    },
    '9pexqdzk': {
      'pt': 'MEDITAÇÃO | ',
      'en': 'MEDITATION |',
    },
    'reifkwfz': {
      'pt': 'Toque para visulizar a meditação de hoje...',
      'en': '',
    },
    'cweka8av': {
      'pt': 'ÚLTIMA SALA 57 - AO VIVO ',
      'en': 'MEDITATION |',
    },
    '02evz92c': {
      'pt': 'PEDIDOS DE ORAÇÃO',
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
      'pt': 'Publicar',
      'en': '',
    },
    '5jqt5w76': {
      'pt': 'Configurações',
      'en': '',
    },
    'tgrv6mif': {
      'pt': 'Meus Pedidos de oração',
      'en': '',
    },
    'vbaahdnb': {
      'pt': 'Minhas Experiências',
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
      'pt': 'Publicar Experiência',
      'en': '',
    },
    'mnrwdjj9': {
      'pt': 'Comentário...',
      'en': '',
    },
    'zrp1kvg1': {
      'pt': 'Publicar Experiência',
      'en': '',
    },
    '8pjo7crm': {
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
  // editSettings
  {
    's4rc4p54': {
      'pt': 'Configurações da cnta',
      'en': '',
    },
    'u0ab2zsq': {
      'pt': 'Editar Perfil',
      'en': '',
    },
    'mdlzf3fn': {
      'pt': 'Mudar a Senha',
      'en': '',
    },
    'elifqk0u': {
      'pt': 'Sair',
      'en': '',
    },
    'j1gaxnm5': {
      'pt': 'Configurações',
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
      'pt': 'Editar Perfil',
      'en': '',
    },
    'h33ozyyv': {
      'pt': 'Altere as configurações do seu perfil...',
      'en': '',
    },
    'g9tuuqw7': {
      'pt': 'Seu Nome',
      'en': '',
    },
    'el4i7z4u': {
      'pt': 'nome de usuário',
      'en': '',
    },
    'wtevvp0a': {
      'pt': 'Sobre Você',
      'en': '',
    },
    'v8g2ebgo': {
      'pt': 'Salvar Alterações',
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
      'pt': 'Enviar Mensagem',
      'en': '',
    },
    'nr8uwwgl': {
      'pt': 'Pedidos de Orações',
      'en': '',
    },
    'nu16yc6o': {
      'pt': 'Experiências',
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
      'pt': 'Mensagens',
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
      'pt': 'Converar com Alguém',
      'en': '',
    },
    '09q918fy': {
      'pt': 'Selecione com quem você deseja conversar.',
      'en': '',
    },
    'zdesyxlo': {
      'pt': 'Pesquisar',
      'en': '',
    },
    'gbp444q7': {
      'pt': 'Chamar',
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
      'pt': 'Criar Grupo de Oração',
      'en': '',
    },
    'fxsjbgwh': {
      'pt': 'Selecione as pessoas para conversar...',
      'en': '',
    },
    'v60ngah2': {
      'pt': 'Pesquisar...',
      'en': '',
    },
    'gwdpno24': {
      'pt': 'Criar Grupo',
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
  // add_meditacao
  {
    'ttje8fax': {
      'pt': 'Titulo',
      'en': '',
    },
    '2c5yh1ec': {
      'pt': 'Texto',
      'en': '',
    },
    'b13r3vhp': {
      'pt': 'url',
      'en': '',
    },
    'jvyypqey': {
      'pt': 'ADD',
      'en': '',
    },
  },
  // add_Pedido_oracao
  {
    '6l0634yw': {
      'pt': 'Pedido de Oração',
      'en': '',
    },
    'xr7c3x4k': {
      'pt': 'Detalhes do Pedido',
      'en': '',
    },
    '4ci7uih1': {
      'pt': 'Enviar Pedido',
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
