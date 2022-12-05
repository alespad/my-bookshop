using CatalogService as service from '../../srv/cat-service';

annotate service.Books with {
	ID @(
		UI.Hidden
	);
	title  @title: 'Title';
	author       @title: 'Author';
	stock     @title: 'Stock';
}

annotate service.Books with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Book',
			TypeNamePlural: 'Books',
			Title          : {
                $Type : 'UI.DataField',
                Value : title
            }
		},
		SelectionFields: [author_ID],
		LineItem: [
			{Value: title},
			{Value: author_ID},
			{
				Value: stock
			}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
		],
		FieldGroup#Main: {
			Data: [
				{Value: author_ID},
				{
					Value: stock
				}
			]
		}
	},
) {

};