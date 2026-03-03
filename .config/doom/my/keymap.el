;;; my/keymap.el -*- lexical-binding: t; -*-

;;;; Emacs stuff
(map! :leader
      (:prefix-map ("x" . nil)
       :nmv
       "e" #'eval-last-sexp))

;;;; IDE
(map! :leader
      :nmv
      "w e" #'treemacs)

(map! :leader
      :nmv
      "o" #'projectile-switch-project)

(map! :leader
      :nmv
      "t p" #'treemacs-add-and-display-current-project-exclusively)
