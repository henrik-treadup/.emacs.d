;;;
;;; Customizations for Clojure
;;;
;;; This file contains things that are language specific to Clojure.
;;;

;;
;; Clojure
;;

;; key bindings and code colorization for Clojure
;; https://github.com/clojure-emacs/clojure-mode
(use-package clojure-mode
  :ensure t
  :config
  (progn
    ;; This is useful for working with camel-case tokens, like names of
    ;; Java classes (e.g. JavaClassName)
    (add-hook 'clojure-mode-hook 'subword-mode)
    ;; syntax hilighting for midje
    (add-hook 'clojure-mode-hook
        (lambda ()
            (setq inferior-lisp-program "lein repl")
            (font-lock-add-keywords
             nil
             '(("(\\(facts?\\)"
                (1 font-lock-keyword-face))
               ("(\\(background?\\)"
                (1 font-lock-keyword-face))))
            (define-clojure-indent (fact 1))
            (define-clojure-indent (facts 1))))))

;; extra syntax highlighting for clojure
(use-package clojure-mode-extra-font-locking
  :ensure t)



;;
;; Cider
;;
(defun config-for-cider ()

  ;; provides minibuffer documentation for the code you're typing into the repl
  (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

  ;; go right to the REPL buffer when it's finished connecting
  (setq cider-repl-pop-to-buffer-on-connect t)

  ;; When there's a cider error, show its buffer and switch to it
  (setq cider-show-error-buffer t)
  (setq cider-auto-select-error-buffer t)

  ;; Where to store the cider history.
  (setq cider-repl-history-file "~/.emacs.d/cider-history")

  ;; Wrap when navigating history.
  (setq cider-repl-wrap-history t))


(use-package cider
  :ensure t
  :config
  (config-for-cider))

