compilecv:
	@bash ./mkcontent.sh
	@groff -s -U -t  -ms -T pdf cv.ms > cv.pdf
	@echo "DONE"

	# @cat cv.ms | groff -U -s -ms -tbl -T pdf cv.ms > cv.pdf
