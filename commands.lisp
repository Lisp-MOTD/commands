(in-package #:motd-commands)

(adt:defdata motd-command
  new-motd

  (add-translation message-id language text)
  (delete-translation message-id language)

  (add-tag message-id tag)
  (delete-tag message-id tag)

  (approve-motd message-id)
  (delete-motd message-id)

  (add-public-key user public-key)
  (delete-public-key user))

(adt:defdata motd-general-error
  (decoding-error authenticated-message)
  (not-authorized user-name)
  (time-difference-too-great delta-time)
  (authentication-failed user-name)
  (no-such-message message-id))

(adt:defdata new-motd-response
  (new-motd-succeeded message-id))

(adt:defdata add-translation-response
  add-translation-succeeded
  (invalid-translation-language language))

(adt:defdata delete-translation-response
  delete-translation-succeeded
  (no-such-translation message-id language))

(adt:defdata add-tag-response
  add-tag-succeeded)

(adt:defdata delete-tag-response
  delete-tag-succeeded
  (no-such-tag message-id tag))

(adt:defdata approve-motd-response
  approve-motd-succeeded)

(adt:defdata delete-motd-response
  delete-motd-succeeded)

(adt:defdata add-public-key-response
  add-public-key-succeeded)

(adt:defdata delete-public-key-response
  delete-public-key-succeeded
  (no-such-public-key user-name))
