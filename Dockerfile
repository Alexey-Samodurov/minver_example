FROM mcr.microsoft.com/dotnet/sdk:7.0

RUN dotnet tool install --tool-path ./minver minver-cli --version 4.3.0
RUN alias minver="/minver/minver"
RUN git clone https://github.com/Alexey-Samodurov/dbt_sugar.git

CMD ["sleep", "5000"]