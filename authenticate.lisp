(in-package #:motd-commands)

(deftype dsa-signature-r () '(integer 1 *))
(deftype dsa-signature-s () '(integer 1 *))
(deftype salt () '(integer 1 *))
(deftype timestamp () '(integer 0 *))
(deftype payload () 'motd-command)
(deftype encoded-signed-message () 'string)

(adt:defdata signature
  (dsa-signature dsa-signature-r dsa-signature-s))

(adt:defdata signed-message-contents
  (signed-message salt timestamp payload))

(adt:defdata message
  (authenticated-message user-name encoded-signed-message signature))

(deftype dsa-key-p () '(integer 1 *))
(deftype dsa-key-q () '(integer 1 *))
(deftype dsa-key-g () '(integer 1 *))
(deftype dsa-key-y () '(integer 1 *))
(deftype dsa-key-x () '(integer 1 *))

(adt:defdata public-key
  (dsa-public-key dsa-key-p dsa-key-q dsa-key-g dsa-key-y))

(adt:defdata private-key
  (dsa-private-key dsa-key-p dsa-key-q dsa-key-g dsa-key-y dsa-key-x))
