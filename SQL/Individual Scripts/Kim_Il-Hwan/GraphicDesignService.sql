SELECT [Services].ServicesID, [Services].ClientID, [Services].Service_Date, [Services].[Services_Description], GraphicDesignJob.GraphicDesignJob, GraphicDesignJob.[Hours]
FROM GraphicDesignJob INNER JOIN [Services] ON GraphicDesignJob.GraphicDesignJobID = [Services].GraphicDesignJobID;
