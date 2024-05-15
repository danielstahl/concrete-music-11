
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

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 11/stage/concreteMusci11Score.caf"

CreateFolder(0, "Low pothit scratch")
ImportAudio(1, 1, "Low pothit scratch Effect", audioFile, false)
ImportAudio(2, 3, "Low pothit scratch Clean", audioFile, true)

CreateFolder(3, "Middle pothit scratch")
ImportAudio(4, 5, "Middle pothit scratch Effect", audioFile, false)
ImportAudio(5, 7, "Middle pothit scratch Clean", audioFile, true)

CreateFolder(6, "High pothit scratch")
ImportAudio(7, 9, "High pothit scratch Effect", audioFile, false)
ImportAudio(8, 11, "High pothit scratch Clean", audioFile, true)

CreateFolder(9, "Low short pot hit rattle")
ImportAudio(10, 13, "Low short pot hit rattle Effect", audioFile, false)
ImportAudio(11, 15, "Low short pot hit rattle Clean", audioFile, true)

CreateFolder(12, "Middle short pot hit rattle")
ImportAudio(13, 17, "Middle short pot hit rattle Effect", audioFile, false)
ImportAudio(14, 19, "Middle short pot hit rattle Clean", audioFile, true)

CreateFolder(15, "High short pot hit rattle")
ImportAudio(16, 21, "High short pot hit rattle Effect", audioFile, false)
ImportAudio(17, 23, "High short pot hit rattle Clean", audioFile, true)
