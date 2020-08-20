/*:
 ## Wrapping an Arrey
 ### Assume we have a track list
 let tracks = ["a","b","c","d","e","f","g"]
 ### if i select the track "d" The response should be:
 let result = ["d","e","f","g","a","b","c"]
 */


let tracks = ["a","b","c","d","e","f","g"]

let selectedTrack = "d"
var  playlist = [String]()
var priorTrack = [String]()

for track  in tracks {
    if track == selectedTrack || playlist.count > 0 {
        playlist.append(track)
    }else {
        priorTrack.append(track)
    }
}

let final = playlist + priorTrack



//: ### Other Approch 
let index = tracks.firstIndex { (str) -> Bool in
    return str == selectedTrack
}
//let prefixArrey = tracks.prefix(upTo: index)
//let sufixArrey = tracks.suffix(from: index)
//let res = sufixArrey + prefixArrey
