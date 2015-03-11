(defpackage #:motd-commands
  (:use #:cl)
  (:export :user-name
           :message-id
           :text
           :language
           :tag
           :delta-time
           :public-key)
  (:export :motd-command
           :new-motd
           :add-translation
           :delete-translation
           :add-tag
           :delete-tag
           :approve-motd
           :delete-motd
           :add-public-key
           :delete-public-key)
  (:export :motd-general-error
           :motd-general-error-p
           :decoding-error
           :not-authorized
           :time-difference-too-great
           :authentication-failed
           :no-such-message)
  (:export :new-motd-response
           :new-motd-succeeded)
  (:export :add-translation-response
           :add-translation-succeeded
           :invalid-translation-language)
  (:export :delete-translation-response
           :delete-translation-succeeded
           :no-such-translation)
  (:export :add-tag-response
           :add-tag-succeeded)
  (:export :delete-tag-response
           :delete-tag-succeeded
           :no-such-tag)
  (:export :approve-motd-response
           :approve-motd-succeeded)
  (:export :delete-motd-response
           :delete-motd-succeeded)
  (:export :add-public-key-response
           :add-public-key-succeeded)
  (:export :delete-public-key-response
           :delete-public-key-succeeded
           :no-such-public-key)
  (:export :signature
           :dsa-signature
           :public-key
           :dsa-public-key
           :private-key
           :dsa-private-key
           :signed-message-contents
           :signed-message
           :authenticated-message)
  (:export :eval-command))
