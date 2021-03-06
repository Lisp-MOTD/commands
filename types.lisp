(in-package #:motd-commands)

(deftype user-name ()
  "User-name must be a string"
  'string)

(deftype message-id ()
  "Message Ids must be positive integers."
  '(integer 1 *))

(deftype text ()
  "Text must be a string"
  'string)

(deftype language ()
  "Languages must be keywords"
  'keyword)

(deftype tag ()
  "Tags must be keywords"
  'keyword)

(deftype delta-time ()
  "Time deltas must be in seconds."
  'real)
