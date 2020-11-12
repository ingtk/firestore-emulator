FROM google/cloud-sdk:alpine

RUN apk update \
    && apk --no-cache add openjdk8 \
    && gcloud components update \
    && gcloud components install beta cloud-firestore-emulator --quiet

CMD /google-cloud-sdk/platform/cloud-firestore-emulator/cloud_firestore_emulator start --host=0.0.0.0 --port=$PORT
