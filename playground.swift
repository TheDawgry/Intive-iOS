import Foundation 

class ConferenceRoom{
    var name: String
    var state: Bool
    var time: Int8

    func description() {
        print(name, state, separator: " - ", terminator: "")
        if state {
            print(" - ", time, separator: "")
        } else {
            print("")
        }
    }

    init(name: String, state: Bool, time: Int8) {
        self.name = name
        self.state = state
        self.time = time
    }
    init(name: String, state: Bool) {
        self.name = name
        self.state = state
        self.time = 0
    }
}

var room: [ConferenceRoom] = []
room.append(ConferenceRoom(name: "Sala 1",state: true,time: 15))
room.append(ConferenceRoom(name: "Sala 2",state: true,time: 10))
room.append(ConferenceRoom(name: "Sala 3",state: false))
room.append(ConferenceRoom(name: "Sala 4",state: true,time: 3))
room.append(ConferenceRoom(name: "Sala 5",state: false))
room.append(ConferenceRoom(name: "Sala 6",state: false))
room.append(ConferenceRoom(name: "Sala 7",state: true,time: 7))
room.append(ConferenceRoom(name: "Sala 8",state: true,time: 12))
room.append(ConferenceRoom(name: "Sala 9",state: false))
room.append(ConferenceRoom(name: "Sala 10",state: true,time: 5))

var freeRoom: [ConferenceRoom] = []
var takenRoom: [ConferenceRoom] = []

for i in 0..<10 {
    if room[i].state {
        takenRoom.append(room[i])
    }
    else {
        freeRoom.append(room[i])
    }
}

print("Free rooms:")
for i in 0..<freeRoom.count {
    freeRoom[i].description()
}
print("Taken rooms")
for i in 0..<takenRoom.count {
    takenRoom[i].description()
}