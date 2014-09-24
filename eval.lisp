(in-package #:motd-commands)

(defun %ok-to-eval-p (list)
  (let ((first (first list)))
    (when (symbolp first)
      (multiple-value-bind (sym visibility)
          (find-symbol (symbol-name first) "MOTD-COMMANDS")
        (and sym
             (eq (symbol-package sym) (symbol-package first))
             (eq visibility :external)
             (adt:algebraic-data-type-p sym))))))

(defun eval-command (cmd-list)
  (cond
    ((and (listp cmd-list)
          (%ok-to-eval-p cmd-list))
     (apply (symbol-function (first cmd-list))
            (mapcar #'eval-command (rest cmd-list))))

    ((and (symbolp cmd-list)
          (%ok-to-eval-p (list cmd-list)))
     (eval (macroexpand cmd-list)))

    ((listp cmd-list)
     (mapcar #'eval-command cmd-list))

    (t
     cmd-list)))
