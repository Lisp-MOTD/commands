(in-package #:motd-commands)

(defun %ok-to-eval-p (list)
  (let ((sym (find-symbol (symbol-name (first list)) "MOTD-COMMANDS")))
    (and sym
         (eq (symbol-package sym) (symbol-package (first list)))
         (adt:algebraic-data-type-p sym))))

(defun eval-command (cmd-list)
  (let ((cmd-list (if (listp cmd-list)
                      cmd-list
                      (list cmd-list))))
    (if (%ok-to-eval-p cmd-list)
        (apply (symbol-function (first cmd-list)) (rest cmd-list))
        cmd-list)))
