(require 'package)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)

(load-theme 'dracula t)

;; resize-window
(global-set-key (kbd "C-c ;") 'resize-window)

;; company
(add-hook 'after-init-hook 'global-company-mode)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; rube
(add-hook 'ruby-mode-hook 'robe-mode)

;; hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; smartparens
(require 'smartparens-config)
(require 'smartparens-ruby)
(smartparens-global-mode t)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
  (sp-local-pair "<" ">")
  (sp-local-pair "<%" "%>"))

;; popwin
(require 'popwin)
(popwin-mode 1)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\.erb\\'" . web-mode))
(setq web-mode-extra-auto-pairs
      '(("erb" . (("open" "close"))) ))
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-auto-closing t)
(add-hook 'web-mode-hook #'(lambda () (smartparens-mode -1)))
(setq web-mode-tag-auto-close-style 2)
(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-comment-keywords t)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-ac-sources-alist
'(("css" . (ac-source-css-property))
  ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; projectile-rails
(projectile-rails-global-mode)

;; enh-ruby-mode
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))

(provide 'init-packages)
