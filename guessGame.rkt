(#%require (lib "27.ss" "srfi"))

(define (play_guess target guess-count)
  (newline)
  (display "Guess a number from 1 to 100:\n")
  (define guess (read))
      (if (< guess target)
          (begin
            (display "Higher... ")
            (play_guess target (+ guess-count 1))))
      (if (> guess target)
          (begin
            (display "Lower... ")
            (play_guess target (+ guess-count 1))))
  (if (= guess target)
       (begin
        (display "Correct! ")
        (display guess-count)
        (display " guesses...")))
       guess-count)

(define (play_game game_history)
  (newline)
  (newline)
  (display "Enter q to quit or any other key to continue: ")
  (define input (read))
  (if (string=? (symbol->string input) "q")
      (begin
        (display "------------------\n")
        (display "Goodbye!"))
  (begin
    (let ((target (+ (random-integer 100) 1)))
    (let ((guess-count (play_guess target 1)))


    (display "Please enter your name: ")
        (let ((name (read))) 



          (let ((updated_history (cons (cons name guess-count) game_history)))
            (newline)
            (display "Good game, ")
            (display name)
            (newline)

        (play_game updated_history))))))))






(play_guess (+ (random-integer 100) 1) 1)
(display "Please enter your name: ")
        (define name (read)) 

        (newline)
        (display "Good game, ")
        (display name)
        (newline)

(play_game '())