import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:videosdk/videosdk.dart';

import 'participant_tile.dart';

class ParticipantGridView extends StatefulWidget {
  final Room meeting;
  const ParticipantGridView({
    Key? key,
    required this.meeting,
  }) : super(key: key);

  @override
  State<ParticipantGridView> createState() => _ParticipantGridViewState();
}

class _ParticipantGridViewState extends State<ParticipantGridView> {
  String? activeSpeakerId;
  Participant? localParticipant;
  Map<String, Participant> participants = {};

  @override
  void initState() {
    // Initialize participants
    localParticipant = widget.meeting.localParticipant;
    participants = widget.meeting.participants;

    // Setting meeting event listeners
    setMeetingListeners(widget.meeting);
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return false ? GridView.count(
      crossAxisCount: 2,
      children: [
        ParticipantTile(
          participant: localParticipant!,
          isLocalParticipant: true,
        ),
        ...participants.values
            .map((participant) => ParticipantTile(participant: participant))
            .toList()
      ],
    ) : Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomRight,
          child: ParticipantTile(
            participant: localParticipant!,
            isLocalParticipant: true,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            height: 160,
            width: 110,
            child: Stack(
              children: [
                ...participants.values.map((participant) => ParticipantTile(participant: participant)).toList()
              ],
            )
          ),
        ),
      ],
    ) ;
  }

  void setMeetingListeners(Room _meeting) {
    // Called when participant joined meeting
    _meeting.on(
      Events.participantJoined,
      (Participant participant) {
        final newParticipants = participants;
        newParticipants[participant.id] = participant;
        setState(() {
          participants = newParticipants;
        });
      },
    );

    // Called when participant left meeting
    _meeting.on(
      Events.participantLeft,
      (participantId) {
        final newParticipants = participants;

        newParticipants.remove(participantId);
        setState(() {
          participants = newParticipants;
        });
      },
    );

    // Called when speaker is changed
    _meeting.on(Events.speakerChanged, (_activeSpeakerId) {
      setState(() {
        activeSpeakerId = _activeSpeakerId;
      });

      log("meeting speaker-changed => $_activeSpeakerId");
    });
  }
}
