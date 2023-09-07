;; Auto-generated. Do not edit!


(when (boundp 'dynamixel_current_2port::SendMotion)
  (if (not (find-package "DYNAMIXEL_CURRENT_2PORT"))
    (make-package "DYNAMIXEL_CURRENT_2PORT"))
  (shadow 'SendMotion (find-package "DYNAMIXEL_CURRENT_2PORT")))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::SENDMOTION")
  (make-package "DYNAMIXEL_CURRENT_2PORT::SENDMOTION"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::SENDMOTIONREQUEST")
  (make-package "DYNAMIXEL_CURRENT_2PORT::SENDMOTIONREQUEST"))
(unless (find-package "DYNAMIXEL_CURRENT_2PORT::SENDMOTIONRESPONSE")
  (make-package "DYNAMIXEL_CURRENT_2PORT::SENDMOTIONRESPONSE"))

(in-package "ROS")





(defclass dynamixel_current_2port::SendMotionRequest
  :super ros::object
  :slots (_SM_finish _TA_finish _UD_finish _RL_finish _EM_finish _request_id ))

(defmethod dynamixel_current_2port::SendMotionRequest
  (:init
   (&key
    ((:SM_finish __SM_finish) nil)
    ((:TA_finish __TA_finish) nil)
    ((:UD_finish __UD_finish) nil)
    ((:RL_finish __RL_finish) nil)
    ((:EM_finish __EM_finish) nil)
    ((:request_id __request_id) 0)
    )
   (send-super :init)
   (setq _SM_finish __SM_finish)
   (setq _TA_finish __TA_finish)
   (setq _UD_finish __UD_finish)
   (setq _RL_finish __RL_finish)
   (setq _EM_finish __EM_finish)
   (setq _request_id (round __request_id))
   self)
  (:SM_finish
   (&optional __SM_finish)
   (if __SM_finish (setq _SM_finish __SM_finish)) _SM_finish)
  (:TA_finish
   (&optional __TA_finish)
   (if __TA_finish (setq _TA_finish __TA_finish)) _TA_finish)
  (:UD_finish
   (&optional __UD_finish)
   (if __UD_finish (setq _UD_finish __UD_finish)) _UD_finish)
  (:RL_finish
   (&optional __RL_finish)
   (if __RL_finish (setq _RL_finish __RL_finish)) _RL_finish)
  (:EM_finish
   (&optional __EM_finish)
   (if __EM_finish (setq _EM_finish __EM_finish)) _EM_finish)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:serialization-length
   ()
   (+
    ;; bool _SM_finish
    1
    ;; bool _TA_finish
    1
    ;; bool _UD_finish
    1
    ;; bool _RL_finish
    1
    ;; bool _EM_finish
    1
    ;; int32 _request_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _SM_finish
       (if _SM_finish (write-byte -1 s) (write-byte 0 s))
     ;; bool _TA_finish
       (if _TA_finish (write-byte -1 s) (write-byte 0 s))
     ;; bool _UD_finish
       (if _UD_finish (write-byte -1 s) (write-byte 0 s))
     ;; bool _RL_finish
       (if _RL_finish (write-byte -1 s) (write-byte 0 s))
     ;; bool _EM_finish
       (if _EM_finish (write-byte -1 s) (write-byte 0 s))
     ;; int32 _request_id
       (write-long _request_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _SM_finish
     (setq _SM_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TA_finish
     (setq _TA_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _UD_finish
     (setq _UD_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RL_finish
     (setq _RL_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _EM_finish
     (setq _EM_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _request_id
     (setq _request_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dynamixel_current_2port::SendMotionResponse
  :super ros::object
  :slots (_select_motion _distance _turn_angle _ud_neckangle _rl_neckangle _emergency _success ))

(defmethod dynamixel_current_2port::SendMotionResponse
  (:init
   (&key
    ((:select_motion __select_motion) 0)
    ((:distance __distance) 0.0)
    ((:turn_angle __turn_angle) 0.0)
    ((:ud_neckangle __ud_neckangle) 0.0)
    ((:rl_neckangle __rl_neckangle) 0.0)
    ((:emergency __emergency) nil)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _select_motion (round __select_motion))
   (setq _distance (float __distance))
   (setq _turn_angle (float __turn_angle))
   (setq _ud_neckangle (float __ud_neckangle))
   (setq _rl_neckangle (float __rl_neckangle))
   (setq _emergency __emergency)
   (setq _success __success)
   self)
  (:select_motion
   (&optional __select_motion)
   (if __select_motion (setq _select_motion __select_motion)) _select_motion)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:turn_angle
   (&optional __turn_angle)
   (if __turn_angle (setq _turn_angle __turn_angle)) _turn_angle)
  (:ud_neckangle
   (&optional __ud_neckangle)
   (if __ud_neckangle (setq _ud_neckangle __ud_neckangle)) _ud_neckangle)
  (:rl_neckangle
   (&optional __rl_neckangle)
   (if __rl_neckangle (setq _rl_neckangle __rl_neckangle)) _rl_neckangle)
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int8 _select_motion
    1
    ;; float64 _distance
    8
    ;; float64 _turn_angle
    8
    ;; float64 _ud_neckangle
    8
    ;; float64 _rl_neckangle
    8
    ;; bool _emergency
    1
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _select_motion
       (write-byte _select_motion s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _turn_angle
       (sys::poke _turn_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ud_neckangle
       (sys::poke _ud_neckangle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rl_neckangle
       (sys::poke _rl_neckangle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _emergency
       (if _emergency (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _select_motion
     (setq _select_motion (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _select_motion 127) (setq _select_motion (- _select_motion 256)))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _turn_angle
     (setq _turn_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ud_neckangle
     (setq _ud_neckangle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rl_neckangle
     (setq _rl_neckangle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _emergency
     (setq _emergency (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dynamixel_current_2port::SendMotion
  :super ros::object
  :slots ())

(setf (get dynamixel_current_2port::SendMotion :md5sum-) "d1639d81e320e2f0297d5f30ecc057d5")
(setf (get dynamixel_current_2port::SendMotion :datatype-) "dynamixel_current_2port/SendMotion")
(setf (get dynamixel_current_2port::SendMotion :request) dynamixel_current_2port::SendMotionRequest)
(setf (get dynamixel_current_2port::SendMotion :response) dynamixel_current_2port::SendMotionResponse)

(defmethod dynamixel_current_2port::SendMotionRequest
  (:response () (instance dynamixel_current_2port::SendMotionResponse :init)))

(setf (get dynamixel_current_2port::SendMotionRequest :md5sum-) "d1639d81e320e2f0297d5f30ecc057d5")
(setf (get dynamixel_current_2port::SendMotionRequest :datatype-) "dynamixel_current_2port/SendMotionRequest")
(setf (get dynamixel_current_2port::SendMotionRequest :definition-)
      "bool SM_finish
bool TA_finish
bool UD_finish
bool RL_finish
bool EM_finish
int32 request_id # Unique request ID
---
int8 select_motion
float64 distance
float64 turn_angle
float64 ud_neckangle
float64 rl_neckangle
bool emergency
bool success # Response success status
")

(setf (get dynamixel_current_2port::SendMotionResponse :md5sum-) "d1639d81e320e2f0297d5f30ecc057d5")
(setf (get dynamixel_current_2port::SendMotionResponse :datatype-) "dynamixel_current_2port/SendMotionResponse")
(setf (get dynamixel_current_2port::SendMotionResponse :definition-)
      "bool SM_finish
bool TA_finish
bool UD_finish
bool RL_finish
bool EM_finish
int32 request_id # Unique request ID
---
int8 select_motion
float64 distance
float64 turn_angle
float64 ud_neckangle
float64 rl_neckangle
bool emergency
bool success # Response success status
")



(provide :dynamixel_current_2port/SendMotion "d1639d81e320e2f0297d5f30ecc057d5")


