;;; my/org.el -*- lexical-binding: t; -*-

(after! org
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 0.5)
        org-log-repeat nil
        org-lowest-priority 69
        org-priority-faces
        '((?A . (:foreground "#eb5e5b" :weight bold))
          (?B . (:foreground "#fca23a"))
          (?C . (:foreground "#e6d732"))
          (?D . (:foreground "#93c46a"))
          (?E . (:foreground "#808080")))
        org-agenda-custom-commands
        '(("i" "Agenda + IDEA tasks"
           ((agenda "")                ; Standard weekly/daily agenda
            (todo "IDEA")))))          ; All TODO entries with keyword "IDEA"
  )

(require 'org-alert)

(after! org-alert
  (setq alert-default-style 'libnotify
        org-alert-interval 60
        org-alert-notify-cutoff 1
        org-alert-notify-after-event-cutoff 10)
  (org-alert-enable))


