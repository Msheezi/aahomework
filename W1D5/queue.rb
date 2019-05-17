# Exercise 2 - Queue
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.

# Test your code to ensure it follows the principle of FIFO.

class Queue

    attr_accessor :queue

def initialize
    @queue = []

end

def enqueue(el)
queue.push(el)
queue
end

def dequeue
queue.shift
queue
end

def peek

    queue.first
end



end