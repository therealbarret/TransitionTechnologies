SELECT [Services].Services_Description, [Services].ClientID, [Services].WebsiteJobID, [Services].GraphicDesignJobID, Requirements FROM [Services]
INNER JOIN Requirements ON [Services].ServicesID = Requirements.ServicesID
WHERE Requirements.RequirementsID = dbo.FindRequirement('New Logo')