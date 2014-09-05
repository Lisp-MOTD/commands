(in-package #:motd-commands)

(adt:defdata motd-commands
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
  (not-authorized user-name)
  (time-difference-too-great delta-time)
  (authentication-failed user-name))

(adt:defdata new-motd-response
  (new-motd-succeeded message-id))

(adt:defdata add-translation-response
  add-translation-succeeded
  (add-translation-no-such-message message-id)
  (invalid-translation-language language))

(adt:defdata delete-translation-response
  delete-translation-succeeded
  (delete-translation-no-such-message message-id)
  (no-such-translation message-id language))

(adt:defdata add-tag-response
  add-tag-succeeded
  (add-tag-no-such-message message-id))

(adt:defdata delete-tag-response
  delete-tag-succeeded
  (delete-tag-no-such-message message-id)
  (no-such-tag message-id tag))

(adt:defdata approve-motd-response
  approve-motd-succeeded
  (approve-motd-no-such-message message-id))

(adt:defdata delete-motd-response
  delete-motd-succeeded
  (delete-motd-no-such-message message-id))

(adt:defdata add-public-key-response
  add-public-key-succeeded)

(adt:defdata delete-public-key-response
  delete-public-key-succeeded)
