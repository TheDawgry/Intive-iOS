import Foundation 

class ConferenceRoom{
    var name: String
    var state: Bool
    var time: Int

    init(name: String, state: Bool, time: Int) {

        self.name = name
        self.state = state
        self.time = time
    }

    init(name: String) {
        self.name = name
        self.state = false
        self.time = 0
    }

    func description() -> String{
        var textDescription: String = name + " - " + String(state)
        if state {
            textDescription += " - " + String(time)
        }
        return textDescription
    }

    func printDescription() {
        print(description())
    }
}

var room: [ConferenceRoom] = []
room.append(ConferenceRoom(name: "Sala 1",state: true,time: 120))
room.append(ConferenceRoom(name: "Sala 2",state: true,time: 150))
room.append(ConferenceRoom(name: "Sala 3"))
room.append(ConferenceRoom(name: "Sala 4",state: true,time: 300))
room.append(ConferenceRoom(name: "Sala 5"))
room.append(ConferenceRoom(name: "Sala 6"))
room.append(ConferenceRoom(name: "Sala 7",state: true,time: 60))
room.append(ConferenceRoom(name: "Sala 8",state: true,time: 600))
room.append(ConferenceRoom(name: "Sala 9"))
room.append(ConferenceRoom(name: "Sala 10",state: true,time: 15))

var freeRoom: [ConferenceRoom] = room.filter { $0.state == false }
var takenRoom: [ConferenceRoom] = room.filter { $0.state == true }

print("Free rooms:")
for i in 0..<freeRoom.count {
    freeRoom[i].printDescription()
}
print("Taken rooms")
for i in 0..<takenRoom.count {
    takenRoom[i].printDescription()
}