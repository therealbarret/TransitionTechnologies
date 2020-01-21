CREATE TABLE GraphicDesignJob (
 GraphicDesignJobID int NOT NULL IDENTITY(1,1),
 GraphicDesignJob varchar(50) NOT NULL,
 [Hours] decimal(4,2),
 CONSTRAINT PK_GraphicDesignJob PRIMARY KEY (GraphicDesignJobID),
);