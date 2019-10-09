# First grab an official image off Docker
FROM continuumio/anaconda3

# Ran this line to fix a bug I had. Don't ask why.
RUN /bin/bash -c "/opt/conda/bin/conda install anaconda -y --quiet"

# Update conda so it can find all the latest packages and dependencies and what not
RUN /bin/bash -c "/opt/conda/bin/conda update -n base -c defaults conda -y --quiet"

# Install OpenCV from the conda-forge channel
RUN /bin/bash -c "/opt/conda/bin/conda install -c conda-forge opencv -y --quiet"
