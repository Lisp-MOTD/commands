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
           :motd-command-p
           :new-motd
           :new-motd-p
           :add-translation
           :add-translation-p
           :add-tag
           :add-tag-p
           :approve-motd
           :approve-motd-p
           :delete-motd
           :delete-motd-p
           :add-public-key
           :add-public-key-p
           :delete-public-key
           :delete-public-key-p)
  (:export :motd-general-error
           :motd-general-error-p
           :decoding-error
           :decoding-error-p
           :not-authorized
           :not-authorized-p
           :time-difference-too-great
           :time-difference-too-great-p
           :authentication-failed
           :authentication-failed-p
           :no-such-message
           :no-such-message-p)
  (:export :new-motd-response
           :new-motd-response-p
           :new-motd-succeeded
           :new-motd-succeeded-p)
  (:export :add-translation-response
           :add-translation-response-p
           :invalid-translation-language
           :invalid-translation-language-p)
  (:export :delete-translation-response
           :delete-translation-response-p
           :delete-translation-succeeded
           :delete-translation-succeeded-p
           :no-such-translation
           :no-such-translation-p)
  (:export :add-tag-response
           :add-tag-response-p
           :add-tag-succeeded
           :add-tag-succeeded-p)
  (:export :delete-tag-response
           :delete-tag-response-p
           :delete-tag-succeeded
           :delete-tag-succeeded-p
           :no-such-tag
           :no-such-tag-p)
  (:export :approve-motd-response
           :approve-motd-response-p
           :approve-motd-succeeded
           :approve-motd-succeeded-p)
  (:export :delete-motd-response
           :delete-motd-response-p
           :delete-motd-succeeded
           :delete-motd-succeeded-p)
  (:export :add-public-key-response
           :add-public-key-response-p
           :add-public-key-succeeded
           :add-public-key-succeeded-p)
  (:export :delete-public-key-response
           :delete-public-key-response-p
           :delete-public-key-succeeded
           :delete-public-key-succeeded-p
           :no-such-public-key
           :no-such-public-key-p)
  (:export :signature
           :signature-p
           :dsa-signature
           :dsa-signature-p
           :public-key
           :public-key-p
           :dsa-public-key
           :dsa-public-key-p
           :private-key
           :private-key-p
           :dsa-private-key
           :dsa-private-key-p
           :signed-message-contents
           :signed-message-contents-p
           :signed-message
           :signed-message-p
           :authenticated-message
           :authenticated-message-p)
  (:export :eval-command))
