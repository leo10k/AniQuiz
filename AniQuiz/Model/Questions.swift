//
//  Questions.swift
//  AniQuiz
//
//  Created by Leonardo Macedo on 04/12/23.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "What is the largest mammal on Earth?", answers: ["Elephant", "Blue Whale", "Giraffe", "Rhino"], correctAnswer: 1),
    Question(title: "Which bird is known for imitating human speech?", answers: ["Eagle", "Owl", "Parrot", "Pigeon"], correctAnswer: 2),
    Question(title: "What is the largest big cat in the world?", answers: ["Leopard", "Lion", "Tiger", "Cheetah"], correctAnswer: 2),
    Question(title: "Which animal is capable of regenerating its lost body parts?", answers: ["Lizard", "Octopus", "Rabbit", "Koala"], correctAnswer: 1),
    Question(title: "What is the only mammal capable of sustained flight?", answers: ["Bat", "Squirrel", "Flying Fox", "Flying Lemur"], correctAnswer: 0),
    Question(title: "Which animal is known for its ability to change color for camouflage?", answers: ["Chameleon", "Frog", "Snake", "Turtle"], correctAnswer: 0),
    Question(title: "What is the world's largest land carnivore?", answers: ["Polar Bear", "Grizzly Bear", "African Lion", "Siberian Tiger"], correctAnswer: 0),
    Question(title: "Which marine animal is often called the gentle giant due to its enormous size?", answers: ["Great White Shark", "Killer Whale (Orca)", "Manta Ray", "Bluefin Tuna"], correctAnswer: 1),
    Question(title: "What is the only continent without native reptiles or snakes?", answers: ["Africa", "Europe", "South America", "Antarctica"], correctAnswer: 3),
    Question(title: "Which bird is known for its ability to mimic a variety of sounds, including chainsaws and car alarms?", answers: ["Nightingale", "Lyrebird", "Mockingbird", "Woodpecker"], correctAnswer: 1)]
