(in-package #:motd-commands)

(defun %ok-to-eval-p (list)
  (let ((first (first list)))
    (when (symbolp first)
      (let ((sym (find-symbol (symbol-name first) "MOTD-COMMANDS")))
        (and sym
             (eq (symbol-package sym) (symbol-package first))
             (adt:algebraic-data-type-p sym))))))

(defun eval-command (cmd-list)
  (cond
    ((and (listp cmd-list)
          (%ok-to-eval-p cmd-list))
     (apply (symbol-function (first cmd-list))
            (mapcar #'eval-command (rest cmd-list))))

    ((and (symbolp cmd-list)
          (%ok-to-eval-p (list cmd-list)))
     (funcall (symbol-function cmd-list)))

    ((listp cmd-list)
     (mapcar #'eval-command cmd-list))

    (t
     cmd-list)))
