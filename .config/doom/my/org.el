;;; my/org.el -*- lexical-binding: t; -*-

(after! org (setq org-format-latex-options (plist-put org-format-latex-options :scale 0.5)))

(require 'org-alert)

(after! org-alert
  (setq alert-default-style 'libnotify
        org-alert-interval 60
        org-alert-notify-cutoff 1
        org-alert-notify-after-event-cutoff 10))


