FROM condaforge/mambaforge
WORKDIR /root
ADD xiaokang-result-explore-panel.ipynb TimeI2SFCAresult.csv conda-requirements.txt ./
RUN mamba install --file conda-requirements.txt -y 
RUN /bin/sh
CMD /opt/conda/bin/panel serve --address="0.0.0.0" --port=$PORT xiaokang-result-explore-panel.ipynb --allow-websocket-origin=i2sfca.herokuapp.com