(in-package :notalone)


(defparameter *zombie-walk-front* (make-animation '((0 219 62 291 0)
                                                    (124 219 186 291 0.25)
                                                    (0 219 62 291 0.5))
                                                  :looped-p t))


(defparameter *zombie-walk-back* (make-animation '((0 72 62 144 0)
                                                   (125 72 186 144 0.25)
                                                   (0 72 62 144 0.5))
                                                 :looped-p t))


(defparameter *zombie-walk-right* (make-animation '((0 144 62 219 0)
                                                    (121 145 186 219 0.25)
                                                    (0 144 62 219 0.5))
                                                  :looped-p t))


(defparameter *zombie-walk-left* (make-animation '((0 0 60 72 0)
                                                   (120 1 186 72 0.25)
                                                   (0 0 60 72 0.5))
                                                 :looped-p t))


(defparameter *zombie-speed* 120)


(defclass zombie (movable renderable) ())


(defun seek-player (zombie player)
  (let* ((zombie-position (position-of zombie))
         (player-position (position-of player)))
    (setf (velocity-of zombie) (mult (ge.math:normalize (vec2 (- (x player-position)
                                                                 (x zombie-position))
                                                              (- (y player-position)
                                                                 (y zombie-position))))
                                     *zombie-speed*))))


(defmethod render ((this zombie))
  (let ((frame (get-frame *zombie-walk-front* (ge.util:real-time-seconds))))
    (draw-image *viewport-origin* :zombie
                :image-origin (keyframe-origin frame)
                :image-end (keyframe-end frame))))
