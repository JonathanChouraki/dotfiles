;; Essential settings.
(use-package linum-relative
  :ensure t
  :config
  (linum-relative-global-mode))

(use-package elscreen
  :ensure t
  :config
  (elscreen-start))

(set-frame-font "Inconsolata 12")
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(provide 'init-global)
