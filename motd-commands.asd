(require :asdf)

(asdf:defsystem #:motd-commands
  :description "Lisp Message of the Day (Common Lisp Admin/Server Commands)"
  :author "Patrick Stein <pat@nklein.com>"
  :version "0.1.20140904"
  :license "unlicense"
  :depends-on (:cl-algebraic-data-type)
  :components ((:static-file "README.md")
               (:static-file "UNLICENSE")
               (:file "package")
               (:file "types" :depends-on ("package"))
               (:file "authenticate" :depends-on ("package"
                                                  "types"))
               (:file "commands" :depends-on ("package"
                                              "types"
                                              "authenticate"))
               (:file "eval" :depends-on ("package"
                                          "authenticate"
                                          "commands"))))
