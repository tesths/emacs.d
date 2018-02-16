(setq inhibit-startup-screen t)

(prefer-coding-system 'utf-8)

(global-linum-mode t)
(tool-bar-mode -1)

(menu-bar-mode -1)
(setq-default cursor-type 'bar)
(setq make-backup-files nil)

(delete-selection-mode 1)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(provide 'init-custom)
