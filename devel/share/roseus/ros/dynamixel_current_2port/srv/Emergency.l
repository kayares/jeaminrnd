;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_current_2port::Emergency)
  (if (not (find-package "DYNAMIXEL_CURRENT_2PORT"))
    (make-package "DYNAMIXEL_CURRENT_2PORT"))
  (shadow 'Emergency (find-package "DYNAMIXEL_CURRENT_2PORT")))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::EMERGENCY")
  (make-package "DYNAMIXEL_CURRENT_2PORT::EMERGENCY"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::EMERGENCYREQUEST")
  (make-package "DYNAMIXEL_CURRENT_2PORT::EMERGENCYREQUEST"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::EMERGENCYRESPONSE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::EMERGENCYRESPONSE"))

(in-package "ROS")





(defclass dynamixel_current_2port::EmergencyRequest
  :super ros::object
  :slots (_finish ))

(defmethod dynamixel_current_2port::EmergencyRequest
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

(defclass dynamixel_current_2port::EmergencyResponse
  :super ros::object
  :slots (_emergency ))

(defmethod dynamixel_current_2port::EmergencyResponse
  (:init
   (&key
    ((:emergency __emergency) nil)
    )
   (send-super :init)
   (setq _emergency __emergency)
   self)
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:serialization-length
   ()
   (+
    ;; bool _emergency
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _emergency
       (if _emergency (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _emergency
     (setq _emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_current_2port::Emergency
  :super ros::object
  :slots ())

(setf (get dynamixel_current_2port::Emergency :md5sum-) "04c66b9168769803386104918010c5ae")
(setf (get dynamixel_current_2port::Emergency :datatype-) "dynamixel_current_2port/Emergency")
(setf (get dynamixel_current_2port::Emergency :request) dynamixel_current_2port::EmergencyRequest)
(setf (get dynamixel_current_2port::Emergency :response) dynamixel_current_2port::EmergencyResponse)

(defmethod dynamixel_current_2port::EmergencyRequest
  (:response () (instance dynamixel_current_2port::EmergencyResponse :init)))

(setf (get dynamixel_current_2port::EmergencyRequest :md5sum-) "04c66b9168769803386104918010c5ae")
(setf (get dynamixel_current_2port::EmergencyRequest :datatype-) "dynamixel_current_2port/EmergencyRequest")
(setf (get dynamixel_current_2port::EmergencyRequest :definition-)
      "bool finish
---
bool emergency
")

(setf (get dynamixel_current_2port::EmergencyResponse :md5sum-) "04c66b9168769803386104918010c5ae")
(setf (get dynamixel_current_2port::EmergencyResponse :datatype-) "dynamixel_current_2port/EmergencyResponse")
(setf (get dynamixel_current_2port::EmergencyResponse :definition-)
      "bool finish
---
bool emergency
")



(provide :dynamixel_current_2port/Emergency "04c66b9168769803386104918010c5ae")


