sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'nspad/bookshopui/test/integration/FirstJourney',
		'nspad/bookshopui/test/integration/pages/BooksList',
		'nspad/bookshopui/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('nspad/bookshopui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);