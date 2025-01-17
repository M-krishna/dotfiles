;; Custom file which emacs can edit
(setq custom-file "~/.emacs.d/emacs.custom.el")

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode)

;; Disable emacs splash screen
(setq inhibit-startup-screen t)

;; Display the line numbers on the left side
(global-display-line-numbers-mode)

;; Open emacs GUI in fullscreen/maximized mode
(add-to-list 'default-frame-alist '(fullscreen . maximized))

; The below is for font size
(set-face-attribute 'default nil :family "Monaco" :height 150)

;; Installing melpa and melpa stable to our package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Using the dashboard package
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Using nerd-icons package
(require 'nerd-icons)

;; Using projectile for project management
(require 'projectile)
(projectile-mode 1) ; enable projectile mode globally
(setq projectile-completion-system 'ivy) ;; install package ivy for this to work

;; Use ivy for completion (VS Code-like)
(ivy-mode 1)
(require 'counsel)
(counsel-mode 1)

;; Enable caching for better performance
(setq projectile-enable-caching t)

;; Auto-discover projects when Emacs starts
(setq projectile-auto-discover t)

;; Using centaur-tabs
(require 'centaur-tabs)
(centaur-tabs-mode t)
(centaur-tabs-headline-match)
(setq centaur-tabs-set-bar 'under)
(setq centaur-tabs-style "bar")
(setq centaur-tabs-height 32)
(centaur-tabs-change-fonts "Monaco" 160)
(setq centaur-tabs-icon-type 'nerd-icons)  ; or 'all-the-icons
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-set-modified-marker t)

;; Using emacstreemacs
(require 'treemacs)
(require 'treemacs-evil) ;; if you're using evil mode (ie. vim)
(require 'treemacs-projectile) ;; if you're using projectile for project management
(setq treemacs-is-never-other-window t)

(require 'evil)
(evil-mode 1)
