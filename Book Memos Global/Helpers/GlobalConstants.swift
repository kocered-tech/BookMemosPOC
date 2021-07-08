//
//  GlobalConstants.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 8.07.2021.
//

import UIKit



//MARK: Example Book Data
let bookImageData1 = UIImage(named:"mock")!.pngData()!
let bookImageData2 = UIImage(named:"dune")!.pngData()!
let bookImageData3 = UIImage(named:"1984")!.pngData()!

let exampleBook1 = BookModel( title: "To Kill a Mocking Bird",
                             author: "Harper Lee",
                             imageData: bookImageData1,
                             readPages: 50,
                             totalPages: 180,
                             startDate: Date())

let exampleBook2 = BookModel( title: "Dune",
                             author: "Frank Herbert",
                             imageData: bookImageData2,
                             readPages: 50,
                             totalPages: 180,
                             startDate: Date())

let exampleBook3 = BookModel( title: "1984",
                             author: "George Orwell",
                             imageData: bookImageData3,
                             readPages: 50,
                             totalPages: 180,
                             startDate: Date())

let exampleBookData = [exampleBook1,exampleBook2,exampleBook3]


//MARK: Example Note Data

let exampleNote1 = NoteModel(title: "Validity of Experience",
                            body: "Not merely the validity of experience, but the very existence of external reality was tacitly denied by their philosophy.",
                            image: bookImageData3,
                            parentBookId: "1984",
                            savedDate: Date())



let exampleNote2 = NoteModel(title: "Sin to Kill",
                            body: "Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.",
                            image: bookImageData3,
                            parentBookId: "1984",
                            savedDate: Date())


let exampleNote3 = NoteModel(title: "Climbing into the Skin",
                            body: "You never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.",
                            image: bookImageData3,
                            parentBookId: "1984",
                            savedDate: Date())

let exampleNote4 = NoteModel(title: "Climbing into the Skin",
                            body: "You never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.",
                            image: bookImageData3,
                            parentBookId: "1984",
                            savedDate: Date())

let exampleNote5 = NoteModel(title: "Climbing into the Skin",
                            body: "You never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s gbird.",
                            image: bookImageData3,
                            parentBookId: "1984",
                            savedDate: Date())

let exampleNote6 = NoteModel(title: "Climbing into the Skin",
                            body: "You never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’t",
                            image: bookImageData3,
                            parentBookId: "1984",
                            savedDate: Date())

let exampleNote7 = NoteModel(title: "Climbing into the Skin",
                            body: "You never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’tou never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbirdou never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbirdou never really understand a person until you consider things from his point of view—” “Sir?” “—until you climb into his skin and walk around in it.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird.Mockingbirds don’t do one thing but make music for us to enjoy. They don’t eat up people’s gardens, don’t nest in corncribs, they don’t do one thing but sing their hearts out for us. That’s why it’s a sin to kill a mockingbird",
                            image: bookImageData3,
                            parentBookId: "1984",
                            savedDate: Date())


let exampleNoteData = [exampleNote1,exampleNote2,exampleNote3,exampleNote4,exampleNote5,exampleNote6,exampleNote7]
