
function CreateFolder(index, name)
  reaper.InsertTrackAtIndex(index, false)
  folder = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(folder, 'P_NAME', name, true)
  reaper.SetMediaTrackInfo_Value( folder, 'I_FOLDERDEPTH',1)
  reaper.SetMediaTrackInfo_Value(folder, 'I_FOLDERCOMPACT', 0)
end

function ImportAudio(index, channel, trackName, fileName, lastInFolder)
  local folderDepth = 0
  if lastInFolder then folderDepth = -1 end

  reaper.SetEditCurPos(0, false, false)
  reaper.InsertTrackAtIndex(index, false)
  tr = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(tr, 'P_NAME', trackName, true)
  reaper.SetMediaTrackInfo_Value( tr, 'I_FOLDERDEPTH',folderDepth)
  reaper.SetOnlyTrackSelected(tr, true)
  reaper.InsertMedia(fileName, 0)
  item = reaper.GetTrackMediaItem(tr, 0)
  take = reaper.GetActiveTake(item)
  reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", channel + 64 + 2)
end

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 11/stage/concreteMusci12Score_v1.caf"

CreateFolder(0, "Short PotHit Rattle Shadow")
ImportAudio(1, 1, "Short PotHit Rattle Shadow Low", audioFile, false)
ImportAudio(2, 3, "Short PotHit Rattle Shadow Middle", audioFile, false)
ImportAudio(3, 5, "Short PotHit Rattle Shadow High", audioFile, true)

CreateFolder(4, "PotHit Scratch Shadow")
ImportAudio(5, 7, "PotHit Scratch Shadow Low", audioFile, false)
ImportAudio(6, 9, "PotHit Scratch Shadow Middle", audioFile, false)
ImportAudio(7, 11, "PotHit Scratch Shadow High", audioFile, true)

CreateFolder(8, "Short PotHit Rattle Pad Low Noise")
ImportAudio(9, 13, "Short PotHit Rattle Pad Low Noise Effect", audioFile, false)
ImportAudio(10, 15, "Short PotHit Rattle Pad Low Noise Clean", audioFile, true)

CreateFolder(11, "Short PotHit Rattle Pad Middle Noise")
ImportAudio(12, 17, "Short PotHit Rattle Pad Middle Noise Effect", audioFile, false)
ImportAudio(13, 19, "Short PotHit Rattle Pad Middle Noise Clean", audioFile, true)

CreateFolder(14, "Short PotHit Rattle Pad High Noise")
ImportAudio(15, 21, "Short PotHit Rattle Pad High Noise Effect", audioFile, false)
ImportAudio(16, 23, "Short PotHit Rattle Pad High Noise Clean", audioFile, true)

CreateFolder(17, "Short PotHit Rattle Pad Low Additative")
ImportAudio(18, 25, "Short PotHit Rattle Pad Low Additative Effect", audioFile, false)
ImportAudio(19, 27, "Short PotHit Rattle Pad Low Additative Clean", audioFile, true)

CreateFolder(20, "Short PotHit Rattle Pad Middle Additative")
ImportAudio(21, 29, "Short PotHit Rattle Pad Middle Additative Effect", audioFile, false)
ImportAudio(22, 31, "Short PotHit Rattle Pad Middle Additative Clean", audioFile, true)

CreateFolder(23, "Short PotHit Rattle Pad High Additative")
ImportAudio(24, 33, "Short PotHit Rattle Pad High Additative Effect", audioFile, false)
ImportAudio(25, 35, "Short PotHit Rattle Pad High Additative Clean", audioFile, true)

CreateFolder(26, "PotHit Scratch Pad Low Noise")
ImportAudio(27, 37, "PotHit Scratch Pad Low Noise Effect", audioFile, false)
ImportAudio(28, 39, "PotHit Scratch Pad Low Noise Clean", audioFile, true)

CreateFolder(29, "PotHit Scratch Pad Middle Noise")
ImportAudio(30, 41, "PotHit Scratch Pad Middle Noise Effect", audioFile, false)
ImportAudio(31, 43, "PotHit Scratch Pad Middle Noise Clean", audioFile, true)

CreateFolder(32, "PotHit Scratch Pad High Noise")
ImportAudio(33, 45, "PotHit Scratch Pad High Noise Effect", audioFile, false)
ImportAudio(34, 47, "PotHit Scratch Pad High Noise Clean", audioFile, true)

CreateFolder(35, "PotHit Scratch Pad Low Additative")
ImportAudio(36, 49, "PotHit Scratch Pad Low Additative Effect", audioFile, false)
ImportAudio(37, 51, "PotHit Scratch Pad Low Additative Clean", audioFile, true)

CreateFolder(38, "PotHit Scratch Pad Middle Additative")
ImportAudio(39, 53, "PotHit Scratch Pad Middle Additative Effect", audioFile, false)
ImportAudio(40, 55, "PotHit Scratch Pad Middle Additative Clean", audioFile, true)

CreateFolder(41, "PotHit Scratch Pad High Additative")
ImportAudio(42, 57, "PotHit Scratch Pad High Additative Effect", audioFile, false)
ImportAudio(43, 59, "PotHit Scratch Pad High Additative Clean", audioFile, true)

