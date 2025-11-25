(clog-repl)
;; evalute the clog-repl form to create a clog-repl and set *body*
;; then you can evaluate any form below

(create-div *body* :content "Hello")

;; Create pattern
;;
;;   html element, panels or other custom elements, use a create-* constructor
;;     the first argument is the parent element
;;
;;   every create-* supports the following names arguments
;;     :style       css styles
;;     :class       css class
;;     :content     the text content of the element
;;
;;     Advanced:
;;     :html-id     a custom html id
;;     :auto-place  auto place the element (default t)
;;                  t       - place new element in DOM at botton of parent
;;                  nil     - create but do not place in DOM
;;                  :bottom - same as t
;;                  :top    - place at top of parent


;; Store the clog object returned and you can perform live actions on it

(defparameter my-div (create-div *body* :content "Hello-2"))

(setf (background-color my-div) :orange)

(setf (text-value my-div) (background-color my-div))

;; parameters can be set and retrieved live using standard common lisp
;; setf is used to set values and the properties are functions that return
;; the live values on the html page.

(defparameter a-button (create-button *body* :content "Some Button"))

(set-on-click a-button (lambda (obj)
                         (setf (background-color obj)
                               (rgb (random 255) (random 255) (random 255)))))

;; events are attached using the set-on-* pattern. The function passed, its
;;   parameter is the object itself allowing for reuse of functions for many
;;   clog objects or events. Some events pass additional parameters for
;;   mouse data, keyboard data, etc.

(create-child *body* "<div><button id='mb'>My Button</button></div>")

;; Chuncks of HTML can also be passed using create-child

(defparameter mb-button (attach-as-child *body* "mb" :clog-type 'clog-button))

;; attach-as-child creates new clog objects that are attached my html id

(let ((my-element (create-form-element *body* :text
                   :style "width:200px;background-color:yellow")))
  (setf (place-holder my-element) "Place holder text"))

;; create-form-element passes the element type as the 3rd argument
;;  create-* :style is an efficient way to pass many css styles at time
;;  of creation.
;;
;; clog uses form elements like any "control" in a UI framework and no need
;;  to think of "forms" and using <submit> etc.

(let ((my-element (create-form-element *body* :checkbox))
      (ts         (create-button *body* :content "Test")))
  (set-on-click ts
                (lambda (obj)
                  (declare (ignore obj))
                  (setf (checkedp my-element) (not (checkedp my-element)))
                  (create-div *body* :content (format nil "val: ~A" (checkedp my-element))))))

;; declare (ignore obj) is often used when using anonymous handlers to indicate
;;  that the function does not use the argument which is the clog-object of
;;  that fired the event.


