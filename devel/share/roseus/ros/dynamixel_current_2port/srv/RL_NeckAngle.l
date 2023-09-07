;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_current_2port::RL_NeckAngle)
  (if (not (find-package "DYNAMIXEL_CURRENT_2PORT"))
    (make-package "DYNAMIXEL_CURRENT_2PORT"))
  (shadow 'RL_NeckAngle (find-package "DYNAMIXEL_CURRENT_2PORT")))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::RL_NECKANGLE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::RL_NECKANGLE"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::RL_NECKANGLEREQUEST")
  (make-package "DYNAMIXEL_CURRENT_2PORT::RL_NECKANGLEREQUEST"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::RL_NECKANGLERESPONSE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::RL_NECKANGLERESPONSE"))

(in-package "ROS")





(defclass dynamixel_current_2port::RL_NeckAngleRequest
  :super ros::object
  :slots (_finish ))

(defmethod dynamixel_current_2port::RL_NeckAngleRequest
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

(defclass dynamixel_current_2port::RL_NeckAngleResponse
  :super ros::object
  :slots (_rl_neckangle ))

(defmethod dynamixel_current_2port::RL_NeckAngleResponse
  (:init
   (&key
    ((:rl_neckangle __rl_neckangle) 0.0)
    )
   (send-super :init)
   (setq _rl_neckangle (float __rl_neckangle))
   self)
  (:rl_neckangle
   (&optional __rl_neckangle)
   (if __rl_neckangle (setq _rl_neckangle __rl_neckangle)) _rl_neckangle)
  (:serialization-length
   ()
   (+
    ;; float64 _rl_neckangle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rl_neckangle
       (sys::poke _rl_neckangle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rl_neckangle
     (setq _rl_neckangle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dynamixel_current_2port::RL_NeckAngle
  :super ros::object
  :slots ())

(setf (get dynamixel_current_2port::RL_NeckAngle :md5sum-) "53641ec2b7d57c4826404748be4e88f1")
(setf (get dynamixel_current_2port::RL_NeckAngle :datatype-) "dynamixel_current_2port/RL_NeckAngle")
(setf (get dynamixel_current_2port::RL_NeckAngle :request) dynamixel_current_2port::RL_NeckAngleRequest)
(setf (get dynamixel_current_2port::RL_NeckAngle :response) dynamixel_current_2port::RL_NeckAngleResponse)

(defmethod dynamixel_current_2port::RL_NeckAngleRequest
  (:response () (instance dynamixel_current_2port::RL_NeckAngleResponse :init)))

(setf (get dynamixel_current_2port::RL_NeckAngleRequest :md5sum-) "53641ec2b7d57c4826404748be4e88f1")
(setf (get dynamixel_current_2port::RL_NeckAngleRequest :datatype-) "dynamixel_current_2port/RL_NeckAngleRequest")
(setf (get dynamixel_current_2port::RL_NeckAngleRequest :definition-)
      "bool finish
---
float64 rl_neckangle
")

(setf (get dynamixel_current_2port::RL_NeckAngleResponse :md5sum-) "53641ec2b7d57c4826404748be4e88f1")
(setf (get dynamixel_current_2port::RL_NeckAngleResponse :datatype-) "dynamixel_current_2port/RL_NeckAngleResponse")
(setf (get dynamixel_current_2port::RL_NeckAngleResponse :definition-)
      "bool finish
---
float64 rl_neckangle
")



(provide :dynamixel_current_2port/RL_NeckAngle "53641ec2b7d57c4826404748be4e88f1")


