;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_current_2port::UD_NeckAngle)
  (if (not (find-package "DYNAMIXEL_CURRENT_2PORT"))
    (make-package "DYNAMIXEL_CURRENT_2PORT"))
  (shadow 'UD_NeckAngle (find-package "DYNAMIXEL_CURRENT_2PORT")))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::UD_NECKANGLE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::UD_NECKANGLE"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::UD_NECKANGLEREQUEST")
  (make-package "DYNAMIXEL_CURRENT_2PORT::UD_NECKANGLEREQUEST"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::UD_NECKANGLERESPONSE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::UD_NECKANGLERESPONSE"))

(in-package "ROS")





(defclass dynamixel_current_2port::UD_NeckAngleRequest
  :super ros::object
  :slots (_finish ))

(defmethod dynamixel_current_2port::UD_NeckAngleRequest
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

(defclass dynamixel_current_2port::UD_NeckAngleResponse
  :super ros::object
  :slots (_ud_neckangle ))

(defmethod dynamixel_current_2port::UD_NeckAngleResponse
  (:init
   (&key
    ((:ud_neckangle __ud_neckangle) 0.0)
    )
   (send-super :init)
   (setq _ud_neckangle (float __ud_neckangle))
   self)
  (:ud_neckangle
   (&optional __ud_neckangle)
   (if __ud_neckangle (setq _ud_neckangle __ud_neckangle)) _ud_neckangle)
  (:serialization-length
   ()
   (+
    ;; float64 _ud_neckangle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ud_neckangle
       (sys::poke _ud_neckangle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ud_neckangle
     (setq _ud_neckangle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dynamixel_current_2port::UD_NeckAngle
  :super ros::object
  :slots ())

(setf (get dynamixel_current_2port::UD_NeckAngle :md5sum-) "54d0093350d66ae9f81f65f132656855")
(setf (get dynamixel_current_2port::UD_NeckAngle :datatype-) "dynamixel_current_2port/UD_NeckAngle")
(setf (get dynamixel_current_2port::UD_NeckAngle :request) dynamixel_current_2port::UD_NeckAngleRequest)
(setf (get dynamixel_current_2port::UD_NeckAngle :response) dynamixel_current_2port::UD_NeckAngleResponse)

(defmethod dynamixel_current_2port::UD_NeckAngleRequest
  (:response () (instance dynamixel_current_2port::UD_NeckAngleResponse :init)))

(setf (get dynamixel_current_2port::UD_NeckAngleRequest :md5sum-) "54d0093350d66ae9f81f65f132656855")
(setf (get dynamixel_current_2port::UD_NeckAngleRequest :datatype-) "dynamixel_current_2port/UD_NeckAngleRequest")
(setf (get dynamixel_current_2port::UD_NeckAngleRequest :definition-)
      "bool finish
---
float64 ud_neckangle
")

(setf (get dynamixel_current_2port::UD_NeckAngleResponse :md5sum-) "54d0093350d66ae9f81f65f132656855")
(setf (get dynamixel_current_2port::UD_NeckAngleResponse :datatype-) "dynamixel_current_2port/UD_NeckAngleResponse")
(setf (get dynamixel_current_2port::UD_NeckAngleResponse :definition-)
      "bool finish
---
float64 ud_neckangle
")



(provide :dynamixel_current_2port/UD_NeckAngle "54d0093350d66ae9f81f65f132656855")


