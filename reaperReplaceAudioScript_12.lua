function ImportAudioIntoChannel(index, channel, channelName, fileName)
  reaper.SetEditCurPos(0, false, false)
  local tr = reaper.GetTrack(0, index)
  
  for j = 0, reaper.GetTrackNumMediaItems(tr) - 1 do
    local item = reaper.GetTrackMediaItem(tr, j)
    reaper.DeleteTrackMediaItem(tr, item)
  end
  reaper.SetOnlyTrackSelected(tr, true)
  reaper.InsertMedia(fileName, 0)
  item = reaper.GetTrackMediaItem(tr, 0)
  take = reaper.GetActiveTake(item)
  reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", channel + 64 + 2)  
end

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 11/stage/concreteMusci12Score_v1.caf"


ImportAudioIntoChannel(1, 1, "Short PotHit Rattle Shadow Low", audioFile)
ImportAudioIntoChannel(2, 3, "Short PotHit Rattle Shadow Middle", audioFile)
ImportAudioIntoChannel(3, 5, "Short PotHit Rattle Shadow High", audioFile)


ImportAudioIntoChannel(5, 7, "PotHit Scratch Shadow Low", audioFile)
ImportAudioIntoChannel(6, 9, "PotHit Scratch Shadow Middle", audioFile)
ImportAudioIntoChannel(7, 11, "PotHit Scratch Shadow High", audioFile)


ImportAudioIntoChannel(9, 13, "Short PotHit Rattle Pad Low Noise Effect", audioFile)
ImportAudioIntoChannel(10, 15, "Short PotHit Rattle Pad Low Noise Clean", audioFile)


ImportAudioIntoChannel(12, 17, "Short PotHit Rattle Pad Middle Noise Effect", audioFile)
ImportAudioIntoChannel(13, 19, "Short PotHit Rattle Pad Middle Noise Clean", audioFile)


ImportAudioIntoChannel(15, 21, "Short PotHit Rattle Pad High Noise Effect", audioFile)
ImportAudio(16, 23, "Short PotHit Rattle Pad High Noise Clean", audioFile)


ImportAudioIntoChannel(18, 25, "Short PotHit Rattle Pad Low Additative Effect", audioFile)
ImportAudio(19, 27, "Short PotHit Rattle Pad Low Additative Clean", audioFile)


ImportAudioIntoChannel(21, 29, "Short PotHit Rattle Pad Middle Additative Effect", audioFile)
ImportAudioIntoChannel(22, 31, "Short PotHit Rattle Pad Middle Additative Clean", audioFile)


ImportAudioIntoChannel(24, 33, "Short PotHit Rattle Pad High Additative Effect", audioFile)
ImportAudioIntoChannel(25, 35, "Short PotHit Rattle Pad High Additative Clean", audioFile)


ImportAudioIntoChannel(27, 37, "PotHit Scratch Pad Low Noise Effect", audioFile)
ImportAudioIntoChannel(28, 39, "PotHit Scratch Pad Low Noise Clean", audioFile)


ImportAudioIntoChannel(30, 41, "PotHit Scratch Pad Middle Noise Effect", audioFile)
ImportAudioIntoChannel(31, 43, "PotHit Scratch Pad Middle Noise Clean", audioFile)


ImportAudioIntoChannel(33, 45, "PotHit Scratch Pad High Noise Effect", audioFile)
ImportAudioIntoChannel(34, 47, "PotHit Scratch Pad High Noise Clean", audioFile)


ImportAudioIntoChannel(36, 49, "PotHit Scratch Pad Low Additative Effect", audioFile)
ImportAudio(37, 51, "PotHit Scratch Pad Low Additative Clean", audioFile)


ImportAudioIntoChannel(39, 53, "PotHit Scratch Pad Middle Additative Effect", audioFile)
ImportAudioIntoChannel(40, 55, "PotHit Scratch Pad Middle Additative Clean", audioFile)


ImportAudioIntoChannel(42, 57, "PotHit Scratch Pad High Additative Effect", audioFile)
ImportAudioIntoChannel(43, 59, "PotHit Scratch Pad High Additative Clean", audioFile)
