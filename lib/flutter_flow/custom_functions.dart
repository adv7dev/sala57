import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int likes(UserPostsRecord post) {
  return post.likes.length;
}

int orar(MeditacaoRecord meditacao) {
  return meditacao.likes.length;
}

bool hasUploadedMedia(String mediaPath) {
  return mediaPath != null && mediaPath.isNotEmpty;
}
