(require 'package)
(package-initialize)

(eval-when-compile
  (require 'use-package))

(use-package evil
  :config
  (evil-mode 1))

(use-package evil-escape
  :config
  (evil-escape-mode))

(use-package org
  :bind (("C-c a" . org-agenda))
  :config
  (setq org-agenda-files (quote ("~/Dropbox/org/new_work.org")))
  (setq org-outline-path-complete-in-steps t)
  (setq org-refile-use-outline-path t))
  

(use-package ivy
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (ivy-mode 1))

(use-package which-key
  :config
  (which-key-mode 1))

(add-hook 'text-mode-hook 'turn-on-auto-fill)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (leuven)))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("org" . "https://orgmode.org/elpa/")
     ("melpa" . "https://melpa.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/"))))
 '(package-selected-packages
   (quote
    (use-package evil-magit magit which-key ivy imenu-list evil-escape evil)))
 '(ring-bell-function (quote ignore))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
