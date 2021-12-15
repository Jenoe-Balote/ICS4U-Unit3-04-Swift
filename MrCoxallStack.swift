//
//  MrCoxallStack.swift
//
//  Created by Jenoe Balote
//  Created on 2021-12-15
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This is the stack class.
//

// Class that emulates a stack
class MrCoxallStack<T> {

    // Custom error types
    enum Errors: Error {
        case emptyStackException
    }

    private var stackAsArray = [T]()

    // Pushes a number to the stack
    func push(pushElement: T) {
        self.stackAsArray.insert(pushElement, at: 0)
    }

    // Pops the first element in the stack
    func pop() throws -> T {
        if self.stackAsArray.count == 0 {
            throw Errors.emptyStackException
        } else {
            return self.stackAsArray.removeFirst()
        }
    }

    // Returns the first element in the stack
    func peek() throws -> T {
      if self.stackAsArray.count == 0 {
        throw Errors.emptyStackException
      } else {
        return self.stackAsArray[0]
      }
    }

    // Clears stack
    func clear() {
      self.stackAsArray.removeAll()
    }

    // Prints stack
    func showStack() {
        self.stackAsArray.forEach { element in print("\(element)")}
    }
}
