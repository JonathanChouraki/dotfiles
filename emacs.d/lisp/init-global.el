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

(set-frame-font "Inconsolata 12")
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4) 

(provide 'init-global)
