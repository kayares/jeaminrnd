;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_current_2port::Turn_Angle)
  (if (not (find-package "DYNAMIXEL_CURRENT_2PORT"))
    (make-package "DYNAMIXEL_CURRENT_2PORT"))
  (shadow 'Turn_Angle (find-package "DYNAMIXEL_CURRENT_2PORT")))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::TURN_ANGLE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::TURN_ANGLE"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::TURN_ANGLEREQUEST")
  (make-package "DYNAMIXEL_CURRENT_2PORT::TURN_ANGLEREQUEST"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::TURN_ANGLERESPONSE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::TURN_ANGLERESPONSE"))

(in-package "ROS")





(defclass dynamixel_current_2port::Turn_AngleRequest
  :super ros::object
  :slots (_finish ))

(defmethod dynamixel_current_2port::Turn_AngleRequest
  (:init
   (&key
    ((:finish __finish) nil)
    )
   (send-super :init)
   (setq _finish __finish)
   self)
  (:finish
   (&optional __finish)
   (if __finish (setq _finish __finish)) _finish)
  (:serialization-length
   ()
   (+
    ;; bool _finish
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finish
       (if _finish (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finish
     (setq _finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_current_2port::Turn_AngleResponse
  :super ros::object
  :slots (_turn_angle ))

(defmethod dynamixel_current_2port::Turn_AngleResponse
  (:init
   (&key
    ((:turn_angle __turn_angle) 0.0)
    )
   (send-super :init)
   (setq _turn_angle (float __turn_angle))
   self)
  (:turn_angle
   (&optional __turn_angle)
   (if __turn_angle (setq _turn_angle __turn_angle)) _turn_angle)
  (:serialization-length
   ()
   (+
    ;; float64 _turn_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _turn_angle
       (sys::poke _turn_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _turn_angle
     (setq _turn_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dynamixel_current_2port::Turn_Angle
  :super ros::object
  :slots ())

(setf (get dynamixel_current_2port::Turn_Angle :md5sum-) "2d06fbbfad695cc7cf264315ed9bddd9")
(setf (get dynamixel_current_2port::Turn_Angle :datatype-) "dynamixel_current_2port/Turn_Angle")
(setf (get dynamixel_current_2port::Turn_Angle :request) dynamixel_current_2port::Turn_AngleRequest)
(setf (get dynamixel_current_2port::Turn_Angle :response) dynamixel_current_2port::Turn_AngleResponse)

(defmethod dynamixel_current_2port::Turn_AngleRequest
  (:response () (instance dynamixel_current_2port::Turn_AngleResponse :init)))

(setf (get dynamixel_current_2port::Turn_AngleRequest :md5sum-) "2d06fbbfad695cc7cf264315ed9bddd9")
(setf (get dynamixel_current_2port::Turn_AngleRequest :datatype-) "dynamixel_current_2port/Turn_AngleRequest")
(setf (get dynamixel_current_2port::Turn_AngleRequest :definition-)
      "bool finish
---
float64 turn_angle
")

(setf (get dynamixel_current_2port::Turn_AngleResponse :md5sum-) "2d06fbbfad695cc7cf264315ed9bddd9")
(setf (get dynamixel_current_2port::Turn_AngleResponse :datatype-) "dynamixel_current_2port/Turn_AngleResponse")
(setf (get dynamixel_current_2port::Turn_AngleResponse :definition-)
      "bool finish
---
float64 turn_angle
")



(provide :dynamixel_current_2port/Turn_Angle "2d06fbbfad695cc7cf264315ed9bddd9")


