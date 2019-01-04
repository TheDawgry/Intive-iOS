import Foundation 

class ConferenceRoom{
    var name: String
    var state: Bool
    var time: String

    func description() {
        print(name, state, separator: " - ", terminator: "")
        if state {
            print(" - ", time, separator: "")
        } else {
            print("")
        }
    }

    init(name: String, state: Bool, time: String) {

        self.name = name
        self.state = state
        self.time = time
    }
    init(name: String, state: Bool) {
        self.name = name
        self.state = state
        self.time = ""
    }
}

var room: [ConferenceRoom] = []
room.append(ConferenceRoom(name: "Sala 1",state: true,time: "07/01/2019 11:45"))
room.append(ConferenceRoom(name: "Sala 2",state: true,time: "07/01/2019 20:15"))
room.append(ConferenceRoom(name: "Sala 3",state: false))
room.append(ConferenceRoom(name: "Sala 4",state: true,time: "01/02/2019 12:00"))
room.append(ConferenceRoom(name: "Sala 5",state: false))
room.append(ConferenceRoom(name: "Sala 6",state: false))
room.append(ConferenceRoom(name: "Sala 7",state: true,time: "06/01/2019 15:30"))
room.append(ConferenceRoom(name: "Sala 8",state: true,time: "21/01/2019 10:30"))
room.append(ConferenceRoom(name: "Sala 9",state: false))
room.append(ConferenceRoom(name: "Sala 10",state: true,time: "04/01/2019 23:00"))

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