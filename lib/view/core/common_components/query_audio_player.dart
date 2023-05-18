import 'dart:developer';

import 'package:clijeo_public/controllers/new_query/audio_playback/audio_playback_controller.dart';
import 'package:clijeo_public/view/loading/loading_widget.dart';
import 'package:clijeo_public/view/error/widgets/custom_error_widget.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QueryAudioPlayer extends StatelessWidget {
  const QueryAudioPlayer(
      {super.key, required this.voiceAttachmentPath, this.closeFunction});
  final String voiceAttachmentPath;
  final Function()? closeFunction;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AudioPlaybackController>(
      create: (context) => AudioPlaybackController(path: voiceAttachmentPath),
      child:
          Consumer<AudioPlaybackController>(builder: (context, controller, _) {
        log("VOICE PATH");
        log(voiceAttachmentPath);
        return controller.state.maybeWhen(
            initial: () {
              controller.initAudioPlayer();
              return const LoadingWidget();
            },
            playing: (currentPos, duration) => QueryAudioPlayerWidget(
                isPlaying: true,
                currentPos: currentPos,
                duration: duration,
                actionFunction: controller.pauseAudio,
                seekFunction: controller.seekAudioPosition,
                closeFunction: closeFunction),
            paused: (currentPos, duration) => QueryAudioPlayerWidget(
                isPlaying: false,
                currentPos: currentPos,
                duration: duration,
                actionFunction: controller.playAudio,
                seekFunction: controller.seekAudioPosition,
                closeFunction: closeFunction),
            orElse: () => CustomErrorWidget(
                  errorText: "",
                ));
      }),
    );
  }
}

class QueryAudioPlayerWidget extends StatelessWidget {
  const QueryAudioPlayerWidget(
      {super.key,
      required this.isPlaying,
      required this.currentPos,
      required this.duration,
      required this.actionFunction,
      required this.seekFunction,
      this.closeFunction});
  final bool isPlaying;
  final Duration duration;
  final Duration currentPos;
  final Function() actionFunction;
  final Function(double) seekFunction;
  final Function()? closeFunction;

  String _getPlayerTimestamp(bool isPlaying, Duration duration) {
    if (!isPlaying && currentPos == 0) {
      return '$duration'.split('.')[0].substring(2);
    }
    return '$currentPos'.split('.')[0].substring(2);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppTheme.selectedColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: actionFunction,
                  child: Icon(isPlaying ? Icons.pause : Icons.play_arrow,
                      color: AppTheme.textDark, size: 25),
                ),
                Expanded(
                    child: SliderTheme(
                  data: const SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7)),
                  child: Slider(
                    activeColor: AppTheme.primaryColor,
                    inactiveColor: AppTheme.lighterPrimaryColor,
                    thumbColor: AppTheme.primaryColor,
                    value: double.parse(currentPos.inMilliseconds.toString()),
                    min: 0,
                    max: double.parse(duration.inMilliseconds.toString()),
                    onChanged: seekFunction,
                  ),
                )),
                if (closeFunction != null)
                  GestureDetector(
                      onTap: closeFunction,
                      child: const Icon(Icons.close,
                          color: AppTheme.textDark, size: 20)),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              _getPlayerTimestamp(isPlaying, duration),
              style: AppTextStyle.verySmallDarkTitle,
            )
          ],
        ),
      ),
    );
  }
}
