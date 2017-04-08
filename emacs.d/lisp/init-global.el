(use-package railscasts-theme
  :ensure t
  :config
  (load-theme 'railscasts t))

(use-package linum-relative
  :ensure t
  :config
  (setq linum-relative-current-symbol "")
  (linum-relative-global-mode))

(use-package elscreen
  :ensure t
  :config
  (elscreen-start))

(use-package helm
  :ensure t
  :config
  (helm-mode 1))

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package powerline
  :ensure t
  :config)

(use-package airline-themes
  :ensure t
  :config
  (load-theme 'airline-kolor))

(setq user-full-name "Jonathan Chouraki"
      user-mail-address "jonathan.chouraki@gmail.com")

(set-frame-font "Fira Mono for Powerline 11")
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(setq
   backup-by-copying t
   backup-directory-alist
    '(("." . "~/.saves"))
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4) 

(provide 'init-global)
