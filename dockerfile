FROM golang:1.17 AS imgfull
WORKDIR /go/src/app
COPY ./app .

#RUN go run desafiogo.go
RUN go build desafiogo.go

#CMD ["app"]


FROM scratch
COPY --from=imgfull /go/src/app/desafiogo .
CMD [ "./desafiogo" ]


