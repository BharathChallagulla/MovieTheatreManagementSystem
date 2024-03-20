ALTER TABLE Movies
ADD CONSTRAINT FK_Movies_Screenings
FOREIGN KEY (ScreeningID) REFERENCES Screenings(ScreeningID);

ALTER TABLE Shows
ADD CONSTRAINT FK_Shows_Screenings
FOREIGN KEY (ScreeningID) REFERENCES Screenings(ScreeningID);