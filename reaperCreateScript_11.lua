
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

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 11/stage/concreteMusci11Score_v2.caf"

CreateFolder(0, "Low pothit scratch")
ImportAudio(1, 1, "Low pothit scratch Room Effect", audioFile, false)
ImportAudio(2, 3, "Low pothit scratch Background Effect", audioFile, false)
ImportAudio(3, 5, "Low pothit scratch Clean", audioFile, true)

CreateFolder(4, "Middle pothit scratch")
ImportAudio(5, 7, "Middle pothit scratch Room Effect", audioFile, false)
ImportAudio(6, 9, "Middle pothit scratch Background Effect", audioFile, false)
ImportAudio(7, 11, "Middle pothit scratch Clean", audioFile, true)

CreateFolder(8, "High pothit scratch")
ImportAudio(9, 13, "High pothit scratch Room Effect", audioFile, false)
ImportAudio(10, 15, "High pothit scratch Background Effect", audioFile, false)
ImportAudio(11, 17, "High pothit scratch Clean", audioFile, true)

CreateFolder(12, "Low short pot hit rattle")
ImportAudio(13, 19, "Low short pot hit rattle Room Effect", audioFile, false)
ImportAudio(14, 21, "Low short pot hit rattle Background Effect", audioFile, false)
ImportAudio(15, 23, "Low short pot hit rattle Clean", audioFile, true)

CreateFolder(16, "Middle short pot hit rattle")
ImportAudio(17, 25, "Middle short pot hit rattle Room Effect", audioFile, false)
ImportAudio(18, 27, "Middle short pot hit rattle Background Effect", audioFile, false)
ImportAudio(19, 29, "Middle short pot hit rattle Clean", audioFile, true)

CreateFolder(20, "High short pot hit rattle")
ImportAudio(21, 31, "High short pot hit rattle Room Effect", audioFile, false)
ImportAudio(22, 33, "High short pot hit rattle Background Effect", audioFile, false)
ImportAudio(23, 35, "High short pot hit rattle Clean", audioFile, true)
